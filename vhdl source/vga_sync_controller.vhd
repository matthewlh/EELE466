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
	signal 	Hcount : integer;

	-- Vertical position (0-524)
	signal 	Vcount : integer;
	signal 	EndOfLine, EndOfField : std_logic;
	
	signal 	vga_hblank, vga_hsync,										-- Sync. signals
				vga_vblank, vga_vsync : std_logic; 						
				
	signal 	rectangle_h, rectangle_v, rectangle : std_logic;  	-- rectangle area
	
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

	 HTOTAL 				<= HSYNC + HBACK_PORCH + HACTIVE + HFRONT_PORCH;
	 HSYNC 				<= to_integer(unsigned(horizontal_sync_pixels));
	 HBACK_PORCH 		<= to_integer(unsigned(horizontal_back_porch_pixels));
	 HACTIVE 			<= to_integer(unsigned(horizontal_display_pixels));
	 HFRONT_PORCH 		<= to_integer(unsigned(horizontal_front_porch_pixels));
	 VTOTAL 				<= VSYNC + VBACK_PORCH + VACTIVE + VFRONT_PORCH;
	 VSYNC 				<= to_integer(unsigned(vertical_sync_lines));
	 VBACK_PORCH 		<= to_integer(unsigned(vertical_back_porch_lines));
	 VACTIVE 			<= to_integer(unsigned(vertical_display_lines));
	 VFRONT_PORCH 		<= to_integer(unsigned(vertical_front_porch_lines));
	 RECTANGLE_HSTART <= 100;
	 RECTANGLE_HEND 	<= 540;
	 RECTANGLE_VSTART <= 100;
	 RECTANGLE_VEND 	<= 380;

	-- Process Statement (optional)
			--------------
		-- Counters --
		--------------
		
		HCounter : process (pixel_clock, reset)
		begin
			if reset = '1' then
				HCount <= 0;
				
			elsif pixel_clock'event and pixel_clock = '1' then
			
				if EndOfLine = '1' then
					HCount <= 0;
				else
					HCount <= HCount + 1;
				end if;
				
			end if;
		end process HCounter;
		
		EndOfLine <= '1' when ( HCount = (HTOTAL -1) ) else '0';
		
		VCounter: process(pixel_clock, reset)
		begin 
			if reset = '1' then
				VCount <= 0;
			elsif pixel_clock'event and pixel_clock = '1' then
			
				if EndOfLine = '1' then
					if EndOfField = '1' then
						VCount <= 0;
					else
						VCount <= Vcount + 1;
					end if;
				end if;
				
			end if;
		end process Vcounter;
		
		EndOfField <= '1' when ( VCount = (VTOTAL -1) ) else '0';
		
		
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
				elsif HCount = (HSYNC -1) then
					vga_hsync <= '0';
				end if;
				
			end if;
		end process HSyncGen;
		
		HBLankGen: process (pixel_clock, reset)
		begin
			if reset = '1' then
				vga_hblank <= '1';
			elsif pixel_clock'event and pixel_clock = '1' then
			
				if HCount = (HSYNC + HBACK_PORCH) then
					vga_hblank <= '0';
				elsif HCount = (HSYNC + HBACK_PORCH + HACTIVE) then
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
					elsif VCount = (VSYNC + VBACK_PORCH + VACTIVE -1) then
						vga_vblank <= '1';
					end if;
				end if;
			
			end if;
		end process VBlankGen;
		
		
--		-------------------
--		-- The Rectangle --
--		-------------------
--		
--		RectangleHGen: process(pixel_clock, reset)
--		begin
--			if reset = '1' then
--				rectangle_h <= '1';
--			elsif pixel_clock'event and pixel_clock = '1' then
--			
--				if Hcount = 	(HSYNC + HBACK_PORCH + RECTANGLE_HSTART) then
--					rectangle_h <= '1';
--				elsif Hcount = (HSYNC + HBACK_PORCH + RECTANGLE_HEND) then 
--					rectangle_h <= '0';
--				end if;
--			
--			end if;
--		end process;
--		
--		RectangleVGen: process(pixel_clock, reset)
--		begin
--			if reset = '1' then
--				rectangle_v <= '1';
--			elsif pixel_clock'event and pixel_clock = '1' then
--			
--				if Vcount = 	(VSYNC + VBACK_PORCH -1 + RECTANGLE_VSTART) then
--					rectangle_v <= '1';
--				elsif Vcount = (VSYNC + VBACK_PORCH -1 + RECTANGLE_VEND) then 
--					rectangle_v <= '0';
--				end if;
--			
--			end if;
--		end process;
--		
--		rectangle <= rectangle_h and rectangle_v;
		
		
--		--------------------
--		-- Output Signals --
--		--------------------
--		
--		VideoOut: process (pixel_clock, reset)
--		begin
--			if reset = '1' then
--				VGA_R <= "0000000000";
--				VGA_G <= "0000000000";
--				VGA_B <= "0000000000";
--			elsif pixel_clock'event and pixel_clock = '1' then
--			
--				if rectangle = '1' then
--					VGA_R <= "1111111111";
--					VGA_G <= "1111111111";
--					VGA_B <= "1111111111";
--				
--				elsif vga_hblank = '0' and vga_vblank = '0' then
--					VGA_R <= "0000000000";
--					VGA_G <= "0000000000";
--					VGA_B <= "1111111111";
--				
--				else
--					VGA_R <= "0000000000";
--					VGA_G <= "0000000000";
--					VGA_B <= "0000000000";
--				
--				end if;
--				
--			end if;		
--		end process VideoOut;
		
		vga_dac_clock 						<= pixel_clock;
		vga_monitor_horizontal_sync 	<= not vga_hsync;
		vga_monitor_vertical_sync 		<= not vga_vsync;
		vga_dac_sync						<= '0';
		vga_dac_blank						<= not (vga_hsync or vga_vsync);
		pixel_row_address					<= std_logic_vector(to_unsigned(Vcount, Nlinebits));
		pixel_column_address				<= std_logic_vector(to_unsigned(Hcount, Nlinebits));

	-- Concurrent Procedure Call (optional)

	-- Concurrent Signal Assignment (optional)

	-- Conditional Signal Assignment (optional)

	-- Selected Signal Assignment (optional)

	-- Component Instantiation Statement (optional)

	-- Generate Statement (optional)

end vga_sync_controller_arch;
