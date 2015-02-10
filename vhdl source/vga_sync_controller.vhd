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
		Nlinebits : unsigned := 10;  -- 640x480@60Hz default
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

architecture <arch_name> of vga_sync_controller is

	-- Declarations (optional)

begin

	-- Process Statement (optional)

	-- Concurrent Procedure Call (optional)

	-- Concurrent Signal Assignment (optional)

	-- Conditional Signal Assignment (optional)

	-- Selected Signal Assignment (optional)

	-- Component Instantiation Statement (optional)

	-- Generate Statement (optional)

end <arch_name>;
