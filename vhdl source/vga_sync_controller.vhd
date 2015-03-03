library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity vga_sync_controller is
	generic
	(
		--------------------------------------------------------------------------------------
		-- Nlinebits is the number of pixels for the entire line scan
		-- This must be based on the highest resolution to be displayed at run time such 
		-- that the following equation holds:
		-- 2^Nlinebits > horizontal_line_pixels   where
		-- horizontal_line_pixels = horizontal_sync_pixels + horizontal_back_porch_pixels
		--                                                 + horizontal_display_pixels
		--                                                 + horizontal_front_porch_pixels
		--
		-- For a 640x480@60Hz resolution setting (25.175 MHz pixel_clock)
		-- horizontal_line_pixels = 800, which requires Nlinebits = 10
		--
		-- For a 1920x1440@60Hz resolution setting (234 MHz pixel_clock)
		-- horizontal_line_pixels = 2600, which requires Nlinebits = 12
		--
		--------------------------------------------------------------------------------------
		Nlinebits : integer
	);
	port
	(
		-------------------------------------------------------------------------
		-- Input Signals
		-- 
		-- Resolution parameter settings for the input signals can be found at
		-- http://tinyvga.com/vga-timing
		-------------------------------------------------------------------------
		pixel_clock                   : in  std_logic;                                -- pixel clock which is the basis of the pixel and line synchronization timings
		reset                         : in  std_logic; 										   -- reset is active high
		horizontal_sync_pixels	      : in  std_logic_vector(Nlinebits-1 downto 0);   -- horizontal sync pulse width in pixels
		horizontal_sync_polarity      : in  std_logic;                                -- horizontal sync pulse polarity : '1' = positive, '0' = negative
		horizontal_back_porch_pixels  : in  std_logic_vector(Nlinebits-1 downto 0);   -- horizontal back porch width in pixels
		horizontal_display_pixels     : in  std_logic_vector(Nlinebits-1 downto 0);   -- horizontal display width in pixels, the display window where DAC data gets written
		horizontal_front_porch_pixels : in  std_logic_vector(Nlinebits-1 downto 0);   -- horizontal front porch width in pixels
		vertical_sync_lines	      	: in  std_logic_vector(Nlinebits-1 downto 0);   -- vertical sync pulse width in lines
		vertical_sync_polarity      	: in  std_logic;                                -- vertical sync pulse polarity : '1' = positive, '0' = negative
		vertical_back_porch_lines  	: in  std_logic_vector(Nlinebits-1 downto 0);   -- vertical back porch width in lines
		vertical_display_lines     	: in  std_logic_vector(Nlinebits-1 downto 0);   -- vertical display width in lines, the display window where DAC data gets written
		vertical_front_porch_lines 	: in  std_logic_vector(Nlinebits-1 downto 0);   -- vertical front porch width in lines
		-------------------------------------------------------------------------
		-- Output Signals
		-------------------------------------------------------------------------       
      vga_monitor_horizontal_sync   : out std_logic;                                -- the horizontal sync pulse to be sent to a VGA monitor
      vga_monitor_vertical_sync     : out std_logic;                                -- the vertical   sync pulse to be sent to a VGA monitor
		vga_dac_clock                 : out std_logic;                                -- the pixel clock to be sent to the video DAC
		vga_dac_blank                 : out std_logic;                                -- DAC blank signal to turn of video DAC outside of the horizontal and vertical display regions
		vga_dac_sync                  : out std_logic;                                -- DAC sync  signal for the ADV7123 for composite sync control input, If sync information is not required on the green channel, the SYNC_n input should be tied to logical zero.
		pixel_row_address             : out std_logic_vector(Nlinebits-1 downto 0);   -- pixel row address for the vertical frame display region
		pixel_column_address          : out std_logic_vector(Nlinebits-1 downto 0)    -- pixel column address for the horizontal line display region
	);
end vga_sync_controller;

architecture vga_sync_controller_arch of vga_sync_controller is

	-- Declarations (optional)
	
	-- Horizontal position (0-800)
	signal 	Hcount : integer range 0 to 65535;

	-- Vertical position (0-524)
	signal 	Vcount : integer range 0 to 65535;
	signal 	EndOfLine, EndOfField : std_logic;
	
	signal 	vga_hblank, vga_hsync,										-- Sync. signals
				vga_vblank, vga_vsync : std_logic;
	
	-- Video parameters	
	signal HTOTAL 				: integer ;
	signal HSYNC 				: integer ;
	signal HBACK_PORCH 		: integer ;
	signal HACTIVE 			: integer ;
	signal HFRONT_PORCH 		: integer ;
	signal VTOTAL 				: integer ;
	signal VSYNC 				: integer ;
	signal VBACK_PORCH 		: integer ;
	signal VACTIVE 			: integer ;
	signal VFRONT_PORCH 		: integer ;
	signal RECTANGLE_HSTART : integer ;
	signal RECTANGLE_HEND 	: integer ;
	signal RECTANGLE_VSTART : integer ;
	signal RECTANGLE_VEND 	: integer ;

begin

	 HSYNC 				<= to_integer(unsigned(horizontal_sync_pixels));
	 HBACK_PORCH 		<= to_integer(unsigned(horizontal_back_porch_pixels));
	 HACTIVE 			<= to_integer(unsigned(horizontal_display_pixels));
	 HFRONT_PORCH 		<= to_integer(unsigned(horizontal_front_porch_pixels));
	 HTOTAL 				<= HSYNC + HBACK_PORCH + HACTIVE + HFRONT_PORCH;
	 
	 VSYNC 				<= to_integer(unsigned(vertical_sync_lines));
	 VBACK_PORCH 		<= to_integer(unsigned(vertical_back_porch_lines));
	 VACTIVE 			<= to_integer(unsigned(vertical_display_lines));
	 VFRONT_PORCH 		<= to_integer(unsigned(vertical_front_porch_lines));
	 VTOTAL 				<= VSYNC + VBACK_PORCH + VACTIVE + VFRONT_PORCH;

	
		--------------
		-- Counters --
		--------------
		
		Hcounter : process (pixel_clock, reset)
		begin
			if reset = '1' then
				Hcount <= 0;
				
			elsif pixel_clock'event and pixel_clock = '1' then
			
				if EndOfLine = '1' then
					Hcount <= 0;
				else
					Hcount <= Hcount + 1;
				end if;
				
			end if;
		end process Hcounter;
		
		EndOfLine <= '1' when ( Hcount = (HTOTAL -1) ) else '0';
		
		Vcounter: process(pixel_clock, reset)
		begin 
			if reset = '1' then
				Vcount <= 0;
			elsif pixel_clock'event and pixel_clock = '1' then
			
				if EndOfLine = '1' then
					if EndOfField = '1' then
						Vcount <= 0;
					else
						Vcount <= Vcount + 1;
					end if;
				end if;
				
			end if;
		end process Vcounter;
		
		EndOfField <= '1' when ( Vcount = (VTOTAL -1) ) else '0';
		
		
		------------------------
		-- Horizontal Signals --
		------------------------
		
		HSyncGen: process (pixel_clock, reset)
		begin
			if reset = '1' then
				vga_hsync <= '1';
			elsif pixel_clock'event and pixel_clock = '1' then
				
				if EndOfLine = '1' then
					vga_hsync <= '1';
				elsif Hcount = (HSYNC -1) then
					vga_hsync <= '0';
				end if;
				
			end if;
		end process HSyncGen;
		
		HBLankGen: process (pixel_clock, reset)
		begin
			if reset = '1' then
				vga_hblank <= '1';
			elsif pixel_clock'event and pixel_clock = '1' then
			
				if Hcount = (HSYNC + HBACK_PORCH) then
					vga_hblank <= '0';
				elsif Hcount = (HSYNC + HBACK_PORCH + HACTIVE) then
					vga_hblank <= '1';
				end if;
			
			end if;
		end process HBlankGen;
		
		
		----------------------
		-- Vertical Signals --
		----------------------
		
		VSyncGen: process (pixel_clock, reset)
		begin
			if reset = '1' then
				vga_vsync <= '1';
			elsif pixel_clock'event and pixel_clock = '1' then
			
				if EndOfLine = '1' then
					if EndOfField = '1' then
						vga_vsync <= '1';
					elsif Vcount = (VSYNC -1) then
						vga_vsync <= '0';
					end if;
				end if;
			
			end if;
		end process VSyncGen;
		
		VBlankGen: process (pixel_clock, reset)
		begin
			if reset = '1' then
				vga_vblank <= '1';
			elsif pixel_clock'event and pixel_clock = '1' then
			
				if EndOfLine = '1' then
					if Vcount = (VSYNC + VBACK_PORCH -1) then
						vga_vblank <= '0';
					elsif Vcount = (VSYNC + VBACK_PORCH + VACTIVE -1) then
						vga_vblank <= '1';
					end if;
				end if;
			
			end if;
		end process VBlankGen;
		
		--------------------
		-- Output Signals --
		--------------------
		
		vga_dac_clock 						<= pixel_clock;
		vga_monitor_horizontal_sync 	<= not vga_hsync when horizontal_sync_polarity = '0' else vga_hsync;
		vga_monitor_vertical_sync 		<= not vga_vsync when vertical_sync_polarity = '0' else vga_vsync;
		vga_dac_sync						<= '0';
		vga_dac_blank						<= not(vga_hblank or vga_vblank);
		pixel_row_address					<= std_logic_vector(to_unsigned(Vcount, Nlinebits));
		pixel_column_address				<= std_logic_vector(to_unsigned(Hcount, Nlinebits));

end vga_sync_controller_arch;
