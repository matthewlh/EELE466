library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity vga_raster is
	port
	(
		reset 		: in std_logic;
		clk 			: in std_logic; 		-- Should be 25.125 MHz
		
		VGA_CLK 		: out std_logic;		-- Dot clock to DAC
		VGA_HS		: out std_logic;		-- Active-Low Horizontal Sync
		VGA_VS		: out std_logic;		-- Active-Low Vertical Sync
		VGA_BLANK	: out std_logic;		-- Active-Low DAC blanking control
		VGA_SYNC 	: out std_logic; 		-- Active-Low DAC Sync on Green
		
		VGA_R			: out std_logic_vector(9 downto 0);
		VGA_G			: out std_logic_vector(9 downto 0);
		VGA_B 		: out std_logic_vector(9 downto 0)
	);
end vga_raster;

architecture rtl of vga_raster is

	-- Video parameters	
	constant HTOTAL 				: integer := 800;
	constant HSYNC 				: integer := 96;
	constant HBACK_PORCH 		: integer := 48;
	constant HACTIVE 				: integer := 640;
	constant HFRONT_PORCH 		: integer := 16;
	constant VTOTAL 				: integer := 525;
	constant VSYNC 				: integer := 2;
	constant VBACK_PORCH 		: integer := 33;
	constant VACTIVE 				: integer := 480;
	constant VFRONT_PORCH 		: integer := 10;
	constant RECTANGLE_HSTART 	: integer := 100;
	constant RECTANGLE_HEND 	: integer := 540;
	constant RECTANGLE_VSTART 	: integer := 100;
	constant RECTANGLE_VEND 	: integer := 380;
	
	
	-- Horizontal position (0-800)
	signal 	Hcount : std_logic_vector(9 downto 0);

	-- Vertical position (0-524)
	signal 	Vcount : std_logic_vector(9 downto 0);
	signal 	EndOfLine, EndOfField : std_logic;
	
	signal 	vga_hblank, vga_hsync,										-- Sync. signals
				vga_vblank, vga_vsync : std_logic; 						
				
	signal 	rectangle_h, rectangle_v, rectangle : std_logic;  	-- rectangle area
	
	begin
	
		--------------
		-- Counters --
		--------------
		
		HCounter : process (clk, reset)
		begin
			if reset = '1' then
				HCount <= (others => '0');
				
			elsif clk'event and clk = '1' then
			
				if EndOfLine = '1' then
					HCount <= (others => '0');
				else
					HCount <= HCount + 1;
				end if;
				
			end if;
		end process HCounter;
		
		EndOfLine <= '1' when ( HCount = (HTOTAL -1) ) else '0';
		
		VCounter: process(clk, reset)
		begin 
			if reset = '1' then
				VCount <= (others => '0');
			elsif clk'event and clk = '1' then
			
				if EndOfLine = '1' then
					if EndOfField = '1' then
						VCount <= (others => '0');
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
		
		HSyncGen: process (clk, reset)
		begin
			if reset = '1' then
				vga_hsync <= '1';
			elsif clk'event and clk = '1' then
				
				if EndOfLine = '1' then
					vga_hsync <= '1';
				elsif HCount = (HSYNC -1) then
					vga_hsync <= '0';
				end if;
				
			end if;
		end process HSyncGen;
		
		HBLankGen: process (clk, reset)
		begin
			if reset = '1' then
				vga_hblank <= '1';
			elsif clk'event and clk = '1' then
			
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
		
		VSyncGen: process (clk, reset)
		begin
			if reset = '1' then
				vga_vsync <= '1';
			elsif clk'event and clk = '1' then
			
				if EndOfLine = '1' then
					if EndOfField = '1' then
						vga_vsync <= '1';
					elsif Vcount = (VSYNC -1) then
						vga_vsync <= '0';
					end if;
				end if;
			
			end if;
		end process VSyncGen;
		
		VBlankGen: process (clk, reset)
		begin
			if reset = '1' then
				vga_vblank <= '1';
			elsif clk'event and clk = '1' then
			
				if EndOfLine = '1' then
					if Vcount = (VSYNC + VBACK_PORCH -1) then
						vga_vblank <= '0';
					elsif VCount = (VSYNC + VBACK_PORCH + VACTIVE -1) then
						vga_vblank <= '1';
					end if;
				end if;
			
			end if;
		end process VBlankGen;
		
		
		-------------------
		-- The Rectangle --
		-------------------
		
		RectangleHGen: process(clk, reset)
		begin
			if reset = '1' then
				rectangle_h <= '1';
			elsif clk'event and clk = '1' then
			
				if Hcount = 	(HSYNC + HBACK_PORCH + RECTANGLE_HSTART) then
					rectangle_h <= '1';
				elsif Hcount = (HSYNC + HBACK_PORCH + RECTANGLE_HEND) then 
					rectangle_h <= '0';
				end if;
			
			end if;
		end process;
		
		RectangleVGen: process(clk, reset)
		begin
			if reset = '1' then
				rectangle_v <= '1';
			elsif clk'event and clk = '1' then
			
				if Vcount = 	(VSYNC + VBACK_PORCH -1 + RECTANGLE_VSTART) then
					rectangle_v <= '1';
				elsif Vcount = (VSYNC + VBACK_PORCH -1 + RECTANGLE_VEND) then 
					rectangle_v <= '0';
				end if;
			
			end if;
		end process;
		
		rectangle <= rectangle_h and rectangle_v;
		
		
		--------------------
		-- Output Signals --
		--------------------
		
		VideoOut: process (clk, reset)
		begin
			if reset = '1' then
				VGA_R <= "0000000000";
				VGA_G <= "0000000000";
				VGA_B <= "0000000000";
			elsif clk'event and clk = '1' then
			
				if rectangle = '1' then
					VGA_R <= "1111111111";
					VGA_G <= "1111111111";
					VGA_B <= "1111111111";
				
				elsif vga_hblank = '0' and vga_vblank = '0' then
					VGA_R <= "0000000000";
					VGA_G <= "0000000000";
					VGA_B <= "1111111111";
				
				else
					VGA_R <= "0000000000";
					VGA_G <= "0000000000";
					VGA_B <= "0000000000";
				
				end if;
				
			end if;		
		end process VideoOut;
		
		VGA_CLK 		<= clk;
		VGA_HS 		<= not vga_hsync;
		VGA_VS 		<= not vga_vsync;
		VGA_SYNC		<= '0';
		VGA_BLANK	<= not (vga_hsync or vga_vsync);
	
end architecture;







