----------------------------------------------------------------------------------
--
-- Author:           Dr. Ross Snider
--           	     	Electrical and Computer Engineering Department
--           	     	Montana State University
--                   Bozeman, MT  59717
--
-- Modified by:      David Keltgen
-- 					 	Matthew Handley
--
-- Create Date:      09/10/2010
-- Modified Date:		01/20/2015
-- Design Name:      DE2_Board
-- Module Name:      DE2_Board 
-- Target Board:     Altera DE2 Evaluation Board
-- Target FPGA:      Cyclone II EP2C35F672C6
-- Tool versions:    Quartus II 10.0
-- Description:      Top Level VHDL Template File for the Altera DE2 Board
--                   This file contains the VHDL Entity for all the physical signals
--                   on the board that can be connected to by the Cyclone II FPGA
--                   Created for use in the EE475 course 
--                   HARDWARE AND SOFTWARE ENGINEERING FOR EMBEDDED SYSTEMS
--
-- Dependencies:     None
-- Revision:         1.01
-- Revision 1.00 -   File Created
--          1.01 -   Updated for Quartus II 10.0 (09/10/2010)
-- 
--
-- Note 1:           Use: Save this file as DE2_Board_top_level.vhd
--                   and import into your design
--                   Remove the statments driving the default output signals in the
--                   architecture that you will use in your design to avoid contention
--                   These statements are found below line ~251.
--
-- Note 2:           The DE2 Board pin assigments can be assigned by importing the file
--                   DE2_Board_pin_assignments.csv into Quartus by
--                   Assigments->Import Assigments...
--                   Verify by using the Pin Planner and making sure they have been loaded 
--                   (Assignments->Pin Planner)
--                   
-- Note 3:           FPGA Unused Pins:
--                   If you set the unused pins as "inputs tri-stated", 
--                   you should connect the pins on the board level to VCC or GND 
--                   or some signal for better noise immunity. If you set the 
--                   unused pins as "inputs tri-stated with weak pull up", you do 
--                   not have to connect the pin on the board.
--                   Do this under Assigments->Device:
--                   	1.  Click "Device and Pin options" Button
--                   	2.  Select the Unused Pins Catagory
--                   	3.  Select the option: "As inputs tri-stated with weak pull up"
--                      4.  Click OK
--
-- Note 4:           Dual Use Pins:
--                   See Note 3, but go to the Dual-Purpose Pins Catagory
--                   	1. Set nCEO by double clicking on the value setting and 
--                         selecting "Use as regular I/O" in the pull down menu.
--                         (this pin is also used by IRDA_TXD)
--                      2. Click OK
--
-- Note 5:           The instructions for inserting a Nios II Processor can be found 
--                   at the lines starting at both the line numbers ~220 and ~232
--
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.ALL;

entity DE2_Board_top_level is

	port
	(		
		-- Clocks
		CLOCK_27  : in std_logic;  -- 27 MHz clock input
		CLOCK_50  : in std_logic;  -- 50 MHz clock input
		EXT_CLOCK : in std_logic;  -- External (SMA) clock input
		
		-- Pushbuttons : 4 pushbuttons debounced via Schmitt Trigger
		KEY : in std_logic_vector(3 downto 0);  -- '1' when NOT PRESSED, '0' when DEPRESSED (active low) 
		
		-- Switches : 17 Slider Switches
		SW	: in  std_logic_vector(17 downto 0);  -- '1' when switch is UP, '0' when switch is DOWN (closest to edge of board)
		
		-- LEDs
		LEDR : out  std_logic_vector(17 downto 0);  -- 18 Red LEDs  '1' = ON,  '0' = OFF
		LEDG : out  std_logic_vector(8 downto 0);   -- 9 Green LEDs '1' = ON,  '0' = OFF
		
		-- 7-segment Displays (dot in displays cannot be used)
		HEX0 : out  std_logic_vector(6 downto 0);   -- '0' turns segment ON, '1' turns segment OFF
		HEX1 : out  std_logic_vector(6 downto 0);   -- '0' turns segment ON, '1' turns segment OFF
		HEX2 : out  std_logic_vector(6 downto 0);   -- '0' turns segment ON, '1' turns segment OFF
		HEX3 : out  std_logic_vector(6 downto 0);   -- '0' turns segment ON, '1' turns segment OFF
		HEX4 : out  std_logic_vector(6 downto 0);   -- '0' turns segment ON, '1' turns segment OFF
		HEX5 : out  std_logic_vector(6 downto 0);   -- '0' turns segment ON, '1' turns segment OFF
		HEX6 : out  std_logic_vector(6 downto 0);   -- '0' turns segment ON, '1' turns segment OFF
		HEX7 : out  std_logic_vector(6 downto 0);   -- '0' turns segment ON, '1' turns segment OFF
		
		-- LCD Module
		LCD_DATA : inout std_logic_vector(7 DOWNTO 0);
		LCD_RW   : out   std_logic;  -- '0' = Write, '1' = Read
		LCD_EN   : out   std_logic;  -- Enable
		LCD_RS   : out   std_logic;  -- Command/Data Select '0' = Command, '1' = Data
		LCD_ON   : out   std_logic;  -- LCD Power ON/OFF
		LCD_BLON : out   std_logic;  -- LCD Back Light ON/OFF
		 
		-- Expansion Header
		GPIO_0 : inout std_logic_vector(35 downto 0);  -- JP1
		GPIO_1 : inout std_logic_vector(35 downto 0);  -- JP2
		
		-- VGA video DAC (ADV7123)
		VGA_R     : out std_logic_vector(9 DOWNTO 0);  -- red data
		VGA_G     : out std_logic_vector(9 DOWNTO 0);  -- green data
		VGA_B     : out std_logic_vector(9 DOWNTO 0);  -- blue data
		VGA_CLK   : out std_logic;  -- VGA Clock
		VGA_BLANK : out std_logic;  -- VGA Blank
		VGA_HS    : out std_logic;  -- VGA H_Sync
		VGA_VS    : out std_logic;  -- VGA V_Sync
		VGA_SYNC  : out std_logic;  -- VGA Sync
		
		-- Audio CODEC (WM8731)
		------------------------------------------------------------
		-- NOTE: WM8731 is controlled by the I2C bus
		--       I2C ADDRESS READ  is 0x34
		--       I2C ADDRESS WRITE is 0x35
		------------------------------------------------------------
		AUD_XCK     : out   std_logic;  -- Audio CODEC Chip Clock
		AUD_BCLK    : out   std_logic;  -- Audio CODEC Bit-Stream Clock
		AUD_DACDAT  : out   std_logic;  -- Audio CODEC DAC Data
		AUD_DACLRCK : out   std_logic;  -- Audio CODEC DAC LR Clock
		AUD_ADCDAT  : in    std_logic;  -- Audio CODEC ADC Data
		AUD_ADCLRCL : out   std_logic;  -- Audio CODEC ADC LR Clock
		
		
		-- RS-232 Serial Port
		UART_RXD : in  std_logic;  -- UART Receiver
		UART_TXD : out std_logic;  -- UART Transmitter
		
		-- PS/2 Serial Port
		PS2_CLK : out   std_logic;  -- PS/2 Clock
		PS2_DAT : inout std_logic;  -- PS/2 Data
		
		-- I2C Serial Bus
		I2C_SCLK    : out   std_logic;  -- I2C Clock
		I2C_SDAT    : inout std_logic;  -- I2C Data
		
		-- Fast Ethernet Network Controller
		ENET_DATA  : inout std_logic_vector(15 DOWNTO 0);  	-- DM9000A Data
		ENET_CLK   : out   std_logic;  						-- DM9000A Clock 25 MHz
		ENET_CMD   : out   std_logic;  						-- DM9000A Command/Data Select, 0=Command, 1=Data
		ENET_CS_N  : out   std_logic;  						-- DM9000A Chip Select
		ENET_INT   : in    std_logic;  						-- DM9000A Interrupt
		ENET_RD_N  : out   std_logic;  						-- DM9000A Read
		ENET_WR_N  : out   std_logic;  						-- DM9000A Write
		ENET_RST_N : out   std_logic;  						-- DM9000A Reset
		
		-- TV Decoder (ADV7181)
		------------------------------------------------------------
		-- NOTE: ADV7181 is controlled by the I2C bus
		--       I2C ADDRESS READ  is 0x40
		--       I2C ADDRESS WRITE is 0x41
		------------------------------------------------------------
		TD_DATA  : in  std_logic_vector(7 DOWNTO 0);  	-- TV Decoder Data
		TD_HS    : in  std_logic;  						-- TV Decoder H_Sync
		TD_VS    : in  std_logic;  						-- TV Decoder V_Sync
		TD_CLK27 : in  std_logic;  						-- TV Decoder Clock Input
		TD_RESET : out std_logic;  						-- TV Decoder Reset
		
		-- USB Controller (Philips ISP1362)
		OTG_ADDR    : out   std_logic_vector(1 DOWNTO 0);  		-- ISP1362 Address
		OTG_DATA    : inout std_logic_vector(15 DOWNTO 0);  	-- ISP1362 Data
		OTG_CS_N    : out   std_logic;							-- ISP1362 Chip Select
		OTG_RD_N    : out   std_logic;							-- ISP1362 Read
		OTG_WR_N    : out   std_logic;							-- ISP1362 Write
		OTG_RST_N   : out   std_logic;							-- ISP1362 Reset
		OTG_INT0    : in    std_logic;							-- ISP1362 Interrupt 0
		OTG_INT1    : in    std_logic;							-- ISP1362 Interrupt 1
		OTG_DREQ0   : in    std_logic;							-- ISP1362 DMA Request 0
		OTG_DREQ1   : in    std_logic;							-- ISP1362 DMA Request 1
		OTG_DACK0_N : out   std_logic;							-- ISP1362 DMA Acknowledge 0
		OTG_DACK1_N : out   std_logic;							-- ISP1362 DMA Acknowledge 1
		OTG_FSPEED  : inout std_logic;							-- USB Full Speed, 0=Enable, Z=Disable
		OTG_LSPEED  : inout std_logic;							-- USB Low  Speed, 0=Enable, Z=Disable
		
		-- Infrared Transceiver (Agilent HSDL-3201)
		IRDA_TXD : out std_logic;  -- IRDA Transmitter		
		IRDA_RXD : in  std_logic;  -- IRDA Receiver		
			
		-- DRAM (8-Mbyte SDRAM)
		DRAM_ADDR  : out   std_logic_vector(11 DOWNTO 0);  -- SDRAM Address
		DRAM_DQ    : inout std_logic_vector(15 DOWNTO 0);  -- SDRAM Data
		DRAM_BA_0  : out   std_logic;                      -- SDRAM Bank Address 0
		DRAM_BA_1  : out   std_logic;                      -- SDRAM Bank Address 1
		DRAM_LDQM  : out   std_logic;                      -- SDRAM Low-byte  Data Mask
		DRAM_UDQM  : out   std_logic;                      -- SDRAM High-byte Data Mask
		DRAM_RAS_N : out   std_logic;                      -- SDRAM Row    Address Strobe
		DRAM_CAS_N : out   std_logic;                      -- SDRAM Column Address Strobe
		DRAM_CKE   : out   std_logic;                      -- SDRAM Clock Enable
		DRAM_CLK   : out   std_logic;                      -- SDRAM Clock 
		DRAM_WE_N  : out   std_logic;                      -- SDRAM Write Enable
		DRAM_CS_N  : out   std_logic;                      -- SDRAM Chip Select
		
		-- SRAM (512-Kbyte SRAM)
		SRAM_ADDR  : out   std_logic_vector(17 DOWNTO 0);  -- SRAM Address
		SRAM_DQ    : inout std_logic_vector(15 DOWNTO 0);  -- SRAM Data
		SRAM_WE_N  : out   std_logic;                      -- SRAM Write  Enable
		SRAM_OE_N  : out   std_logic;                      -- SRAM Output Enable
		SRAM_UB_N  : out   std_logic;                      -- SRAM High-byte Data Mask
		SRAM_LB_N  : out   std_logic;                      -- SRAM Low-byte  Data Mask
		SRAM_CE_N  : out   std_logic;                      -- SRAM Chip Enable
		
		-- Flash (4-Mbyte Flash)
		FL_ADDR  : out   std_logic_vector(21 DOWNTO 0);  -- Flash Address
		FL_DQ    : inout std_logic_vector(7 DOWNTO 0);   -- Flash Data
		FL_CE_N  : out   std_logic;                      -- Flash Chip Enable
		FL_OE_N  : out   std_logic;                      -- Flash Output Enable
		FL_RST_N : out   std_logic;                      -- Flash Reset
		FL_WE_N  : out   std_logic;                      -- Flash Write Enable
		
		-- SD Card Socket
		SD_DAT   : inout std_logic;
		SD_DAT3  : out   std_logic;
		SD_CMD   : out   std_logic;
		SD_CLK   : out   std_logic
				
	);
end DE2_Board_top_level;


architecture behavioral of DE2_Board_top_level is

	-------------------------------
	---- Component Declaration ----
	-------------------------------
	
	Component clk_div IS
		PORT
		(
			clock_50Mhz				: IN	STD_LOGIC;
			clock_1MHz				: OUT	STD_LOGIC;
			clock_100KHz			: OUT	STD_LOGIC;
			clock_10KHz				: OUT	STD_LOGIC;
			clock_1KHz				: OUT	STD_LOGIC;
			clock_100Hz				: OUT	STD_LOGIC;
			clock_10Hz				: OUT	STD_LOGIC;
			clock_1Hz				: OUT	STD_LOGIC
		);		
	END component;
	
	component vga_sync_controller is
		generic
		(
			Nlinebits : integer  -- 640x480@60Hz default
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
	end component;
	
	component rom_ross_r IS
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	END component;
	
	component rom_ross_g IS
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	END component;
	
	component rom_ross_b IS
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	END component;
	
	Component debounce IS
		PORT(	
			pb							: IN	STD_LOGIC;
			clock_100Hz 			: IN	STD_LOGIC;
			pb_debounced			: OUT	STD_LOGIC
		);
	END component;
	
	component onepulse IS
	
	PORT(PB_debounced, clock	: IN	STD_LOGIC;
		 PB_single_pulse		: OUT	STD_LOGIC);

	END component;
	
--	ENTITY pll IS
--	PORT
--	(
--		inclk0		: IN STD_LOGIC  := '0';
--		c0		: OUT STD_LOGIC ;
--		locked		: OUT STD_LOGIC 
--	);
--	END pll;
	

	
	


	----------------------------
	---- Signal Declaration ----
	----------------------------
	
	signal vga_blank_local  : std_logic;
	signal vga_dac_clock		: std_logic;
	
	signal pixel_row_address : std_logic_vector(15 downto 0);
	signal pixel_col_address : std_logic_vector(15 downto 0);
	
	signal rom_ross_r_q : std_logic_vector(7 downto 0);
	signal rom_ross_g_q : std_logic_vector(7 downto 0);
	signal rom_ross_b_q : std_logic_vector(7 downto 0);
	
	signal pixel_number : std_logic_vector(13 downto 0);
	
	
	signal 	rectangle_h, rectangle_v, rectangle : std_logic;  	-- rectangle area
	
	
	-- clock --
	signal clock_1MHz, clock_100KHz, clock_10KHz, clock_1KHz, clock_100Hz, clock_10Hz, clock_1Hz : STD_LOGIC;
	signal CLOCK_25MHz : STD_LOGIC;
	
	signal pixel_clock                   :  std_logic								:= CLOCK_25MHz;
	signal horizontal_sync_pixels	       :  std_logic_vector(15 downto 0)	:= x"0060";
	signal horizontal_sync_polarity      :  std_logic 							 	:=	'0';
	signal horizontal_back_porch_pixels  :  std_logic_vector(15 downto 0)	:=	x"0030";
	signal horizontal_display_pixels     :  std_logic_vector(15 downto 0)	:= x"0280";
	signal horizontal_front_porch_pixels :  std_logic_vector(15 downto 0)	:= x"0010";
	signal vertical_sync_lines	      	 :  std_logic_vector(15 downto 0)	:= x"0002";
	signal vertical_sync_polarity      	 :  std_logic								:= '0';
	signal vertical_back_porch_lines  	 :  std_logic_vector(15 downto 0)	:= x"0021";
	signal vertical_display_lines     	 :  std_logic_vector(15 downto 0)	:= x"01E0";
	signal vertical_front_porch_lines 	 :  std_logic_vector(15 downto 0)	:= x"000A";
	
	signal pb_debounced_key1 				 : std_logic;
	signal pb_debounced_key2 				 : std_logic;
	signal pb_debounced_key3 				 : std_logic;
	signal key1_onepulse 					 : std_logic;
	signal key2_onepulse 					 : std_logic;
	signal key3_onepulse						 : std_logic;
	
	signal clock_49_5                    : std_logic;
	signal clock_49_5_count              : integer range 0 to 24750000 := 0;
	
	signal high_res							 : std_logic := '0';  --high res (800x600) is 1, low res is 0 
	
	signal move_sign							 : std_logic;
	signal direction							 : std_logic;
	signal step_size							 : std_logic_vector(7 downto 0);
	
	signal begin_rectangle_h             : integer range 0 to 800 := 244;
	signal end_rectangle_h					 : integer range 0 to 800 := 344;
	signal begin_rectangle_v				 : integer range 0 to 600 := 135;
	signal end_rectangle_v					 : integer range 0 to 600 := 260; 
	
begin

	move_sign <= SW(17);
	direction <= SW(16);
	step_size <= SW(7 downto 0);
	
	change_res: process(CLOCK_50, key2_onepulse, key3_onepulse)
	begin
		if(rising_edge(CLOCK_50)) then
			if(key2_onepulse = '1') then
			
		-- when KEY2 is pressed, display 800x600 resolution
			high_res 							<= '1';
			--pixel_clock							<= CLOCK_50;
			horizontal_sync_pixels	      <= x"0080";   			-- horizontal sync pulse width in pixels
			horizontal_sync_polarity      <= '1';
			horizontal_back_porch_pixels  <= x"0058";   			-- horizontal back porch width in pixels
			horizontal_display_pixels     <= x"0320";   			-- horizontal display width in pixels, the display window where DAC data gets written
			horizontal_front_porch_pixels <= x"0028";   			-- horizontal front porch width in pixels
			vertical_sync_lines	      	<= x"0004";   			-- vertical sync pulse width in lines
			vertical_sync_polarity        <= '1';
			vertical_back_porch_lines  	<= x"0017";   			-- vertical back porch width in lines
			vertical_display_lines     	<= x"0258";   			-- vertical display width in lines, the display window where DAC data gets written
			vertical_front_porch_lines 	<= x"0001";   			-- vertical front porch width in lines

			elsif(key3_onepulse = '1') then
		--when KEY3 is pressed, display 640x480 resolution
			high_res                      <= '0';
			--pixel_clock							<= CLOCK_25MHz;
			horizontal_sync_pixels	      <= x"0060";   			-- horizontal sync pulse width in pixels
			horizontal_sync_polarity      <= '0';
			horizontal_back_porch_pixels  <= x"0030";   			-- horizontal back porch width in pixels
			horizontal_display_pixels     <= x"0280";   			-- horizontal display width in pixels, the display window where DAC data gets written
			horizontal_front_porch_pixels <= x"0010";   			-- horizontal front porch width in pixels
			vertical_sync_lines	      	<= x"0002";   			-- vertical sync pulse width in lines
			vertical_sync_polarity        <= '0';
			vertical_back_porch_lines  	<= x"0021";   			-- vertical back porch width in lines
			vertical_display_lines     	<= x"01E0";   			-- vertical display width in lines, the display window where DAC data gets written
			vertical_front_porch_lines 	<= x"000A";   			-- vertical front porch width in lines
			end if;
		end if;
	end process;
	
	move_image: process(CLOCK_50, key1_onepulse)
	begin
		if(rising_edge(CLOCK_50)) then
			if(key1_onepulse = '1') then
				if((move_sign = '1') and (direction = '1')) then -- move up
					
					begin_rectangle_v <= begin_rectangle_v + to_integer(unsigned(step_size));
					end_rectangle_v <= end_rectangle_v + to_integer(unsigned(step_size));
				
				elsif((move_sign = '1' and (direction = '0'))) then -- move right
					
					begin_rectangle_h <= begin_rectangle_h + to_integer(unsigned(step_size));
					end_rectangle_h <= end_rectangle_h + to_integer(unsigned(step_size));
				
				elsif((move_sign = '0') and (direction = '1')) then --move down
				
					begin_rectangle_v <= begin_rectangle_v - to_integer(unsigned(step_size));
					end_rectangle_v <= end_rectangle_v - to_integer(unsigned(step_size));

				elsif((move_sign = '0') and (direction = '0')) then -- move left
				
					begin_rectangle_h <= begin_rectangle_h - to_integer(unsigned(step_size));
					end_rectangle_h <= end_rectangle_h - to_integer(unsigned(step_size));
				
				end if;
			end if;

		end if;
	end process;

	clk_div_2: process(CLOCK_50)
	begin
		if CLOCK_50'event and CLOCK_50 = '1' then
			CLOCK_25MHz <= not CLOCK_25MHz;
		end if;
	end process;
	
--	pixel_clock_select: process(CLOCK_50)
--	begin
--		if CLOCK_50'event and CLOCK_50 = '1' then
--			if( high_res = '1') then
--				pixel_clock <= CLOCK_50;
--		end if;
--	end process;

pixel_clock <= CLOCK_50 when high_res = '1' else CLOCK_25MHz;
	
	vga_sync_controller_1: component vga_sync_controller
		generic map
		(
			Nlinebits => 16
		)
		port map
		(
			-------------------------------------------------------------------------
			-- Input Signals
			-- 
			-- Resolution parameter settings for the input signals can be found at
			-- http://tinyvga.com/vga-timing
			-------------------------------------------------------------------------
			pixel_clock                   => pixel_clock,		-- pixel clock which is the basis of the pixel and line synchronization timings
			reset                         => '0',					-- reset is active high
			horizontal_sync_pixels	      => horizontal_sync_pixels,   			-- horizontal sync pulse width in pixels
			horizontal_sync_polarity      => horizontal_sync_polarity,    				-- horizontal sync pulse polarity : '1' = positive, '0' = negative
			horizontal_back_porch_pixels  => horizontal_back_porch_pixels,   			-- horizontal back porch width in pixels
			horizontal_display_pixels     => horizontal_display_pixels,   			-- horizontal display width in pixels, the display window where DAC data gets written
			horizontal_front_porch_pixels => horizontal_front_porch_pixels,   			-- horizontal front porch width in pixels
			vertical_sync_lines	      	=> vertical_sync_lines,   			-- vertical sync pulse width in lines
			vertical_sync_polarity      	=> vertical_sync_polarity,           	-- vertical sync pulse polarity : '1' = positive, '0' = negative
			vertical_back_porch_lines  	=> vertical_back_porch_lines,   			-- vertical back porch width in lines
			vertical_display_lines     	=> vertical_display_lines,   			-- vertical display width in lines, the display window where DAC data gets written
			vertical_front_porch_lines 	=> vertical_front_porch_lines,   			-- vertical front porch width in lines
			
			-------------------------------------------------------------------------
			-- Output Signals
			-------------------------------------------------------------------------		
			vga_monitor_horizontal_sync   => VGA_HS,						-- the horizontal sync pulse to be sent to a VGA monitor
			vga_monitor_vertical_sync     => VGA_VS,           		-- the vertical   sync pulse to be sent to a VGA monitor
			vga_dac_clock                 => vga_dac_clock,    		-- the pixel clock to be sent to the video DAC
			vga_dac_blank                 => vga_blank_local,  		-- DAC blank signal to turn of video DAC outside of the horizontal and vertical display regions
			vga_dac_sync                  => VGA_SYNC,        			-- DAC sync  signal for the ADV7123 for composite sync control input, If sync information is not required on the green channel, the SYNC_n input should be tied to logical zero.
			pixel_row_address             => pixel_row_address,		-- pixel row address for the vertical frame display region
			pixel_column_address          => pixel_col_address    	-- pixel column address for the horizontal line display region
		);
		  
	rom_ross_r_inst : rom_ross_r PORT MAP (
			address	 	=> pixel_number,
			clock	 		=> CLOCK_25MHz,
			q	 			=> rom_ross_r_q
		);
		  
	rom_ross_g_inst : rom_ross_g PORT MAP (
			address	 	=> pixel_number,
			clock	 		=> CLOCK_25MHz,
			q	 			=> rom_ross_g_q
		);
		  
	rom_ross_b_inst : rom_ross_b PORT MAP (
			address	 	=> pixel_number,
			clock	 		=> CLOCK_25MHz,
			q	 			=> rom_ross_b_q
		);
		
		debounce_key2 : component debounce
		port map (
			pb						=> KEY(2),
			clock_100Hz			=> clock_100Hz,
			pb_debounced		=> pb_debounced_key2
		);
		
		debounce_key3 : component debounce
		port map (
			pb						=> KEY(3),
			clock_100Hz			=> clock_100Hz,
			pb_debounced		=> pb_debounced_key3
		);
		
		clk_div_1 : component clk_div
	  port map (
			clock_50Mhz		=> CLOCK_50,
			clock_1MHz		=> clock_1MHz,
			clock_100KHz	=> clock_100KHz,
			clock_10KHz		=> clock_10KHz,
			clock_1KHz		=> clock_1KHz, 
			clock_100Hz		=> clock_100Hz,
			clock_10Hz		=> clock_10Hz,
			clock_1Hz		=> clock_1Hz
	  );
	  
	  	onepulse_key1 : component onepulse
		PORT MAP
		(
			clock					=> clock_50,
			PB_debounced 		=> pb_debounced_key1, 
			PB_single_pulse	=> key1_onepulse
		);
	  
		onepulse_key2 : component onepulse
		PORT MAP
		(
			clock					=> clock_50,
			PB_debounced 		=> pb_debounced_key2, 
			PB_single_pulse	=> key2_onepulse
		);
		
		onepulse_key3 : component onepulse
		PORT MAP
		(
			clock					=> clock_50,
			PB_debounced 		=> pb_debounced_key3, 
			PB_single_pulse	=> key3_onepulse
		);
		
--		pll_inst : pll PORT MAP (
--			inclk0	 => CLOCK_50,
--			c0	 => c0_sig,
--			locked	 => locked_sig
--	);
		
		
		-------------------------
		-- The Image Rectangle --
		-------------------------
		
		RectangleHGen: process(CLOCK_25MHz)
		begin
			if CLOCK_25MHz'event and CLOCK_25MHz = '1' then
			
				if pixel_col_address = begin_rectangle_h then
					rectangle_h <= '1';
				elsif pixel_col_address = end_rectangle_h then 
					rectangle_h <= '0';
				end if;
				
			end if;
		end process;
		
		RectangleVGen: process(CLOCK_25MHz)
		begin
			if CLOCK_25MHz'event and CLOCK_25MHz = '1' then
			
				if pixel_row_address = begin_rectangle_v then
					rectangle_v <= '1';
				elsif pixel_row_address = end_rectangle_v then 
					rectangle_v <= '0';
				end if;
			
			end if;
		end process;
		
		rectangle <= rectangle_h and rectangle_v;
		
		VideoOut: process (CLOCK_25MHz)
		begin
			if CLOCK_25MHz'event and CLOCK_25MHz = '1' then
			
				if rectangle = '1' then
					VGA_R(9 downto 2) <= rom_ross_r_q;
					VGA_G(9 downto 2) <= rom_ross_g_q;
					VGA_B(9 downto 2) <= rom_ross_b_q;
					
					pixel_number <= pixel_number +1;
					
--					VGA_R <= "1111111111";
--					VGA_G <= "1111111111";
--					VGA_B <= "1111111111";
				
				elsif vga_blank_local = '1' then
					VGA_R <= "0011111111";
					VGA_G <= "0011111111";
					VGA_B <= "0011111111";
				
				else
					VGA_R <= "0000000000";
					VGA_G <= "0000000000";
					VGA_B <= "0000000000";
				
				end if;
				
				if((pixel_col_address = 0) and (pixel_row_address = 0)) then
					pixel_number <= "00000000000000";
				end if;
				
			end if;		
		end process VideoOut;
		

   -----------------------------------------
   -- Delete the signals below that you will
   -- be connecting to other components
   -- Note: in    signals are ignored
   --       out   signals are set to '0'
   --       inout signals are set to 'Z'
   -----------------------------------------
	-- LEDs
	LEDR <= (others => '0');  -- 18 Red LEDs  '1' = ON,  '0' = OFF
	LEDG <= (others => '0');  -- 9 Green LEDs '1' = ON,  '0' = OFF
	
	-- 7-segment Displays (dot in displays cannot be used)
	HEX0 <= (others => '1');  -- '0' turns segment ON, '1' turns segment OFF
	HEX1 <= (others => '1');  -- '0' turns segment ON, '1' turns segment OFF
	HEX2 <= (others => '1');  -- '0' turns segment ON, '1' turns segment OFF
	HEX3 <= (others => '1');  -- '0' turns segment ON, '1' turns segment OFF
	HEX4 <= (others => '1');  -- '0' turns segment ON, '1' turns segment OFF
	HEX5 <= (others => '1');  -- '0' turns segment ON, '1' turns segment OFF
	HEX6 <= (others => '1');  -- '0' turns segment ON, '1' turns segment OFF
	HEX7 <= (others => '1');  -- '0' turns segment ON, '1' turns segment OFF
	
	-- LCD Module
	LCD_DATA <= (others => 'Z');
	LCD_RW   <= '1';  -- '0' = Write, '1' = Read
	LCD_EN   <= '0';  -- Enable
	LCD_RS   <= '1';  -- Command/Data Select '0' = Command, '1' = Data
	LCD_ON   <= '1';  -- LCD Power ON/OFF
	LCD_BLON <= '1';  -- LCD Back Light ON/OFF
	 
	-- Expansion Header
	GPIO_0(0) <= pixel_clock ;--(others => '0');  -- JP1
	GPIO_1 <= (others => '0');  -- JP2
	
	-- VGA video DAC (ADV7123)
	
	
--	VGA_R     <= (others => '1');  -- red data
--	VGA_G     <= (others => '1');  -- green data
--	VGA_B     <= (others => '1');  -- blue data
	
	VGA_CLK   <= vga_dac_clock;  -- VGA Clock
	VGA_BLANK <= vga_blank_local;  -- VGA Blank
--	VGA_HS    <= vga_monitor_horizontal_sync;  -- VGA H_Sync
--	VGA_VS    <= vga_monitor_vertical_sync;  -- VGA V_Sync
--	VGA_SYNC  <= '0';  -- VGA Sync
	
	-- Audio CODEC (WM8731)
	------------------------------------------------------------
	-- NOTE: WM8731 is controlled by the I2C bus
	--       I2C ADDRESS READ  is 0x34
	--       I2C ADDRESS WRITE is 0x35
	------------------------------------------------------------
	AUD_XCK     <= '0';  -- Audio CODEC Chip Clock
	AUD_BCLK    <= '0';  -- Audio CODEC Bit-Stream Clock
	AUD_DACDAT  <= '0';  -- Audio CODEC DAC Data
	AUD_DACLRCK <= '0';  -- Audio CODEC DAC LR Clock
	AUD_ADCLRCL <= '0';  -- Audio CODEC ADC LR Clock
	
	-- RS-232 Serial Port
	UART_TXD <= '0';  -- UART Transmitter
	
	-- PS/2 Serial Port
	PS2_CLK <= '0';  -- PS/2 Clock
	PS2_DAT <= 'Z';  -- PS/2 Data
	
	-- I2C Serial Bus
	I2C_SCLK    <= '0';  -- I2C Clock
	I2C_SDAT    <= 'Z';  -- I2C Data
	
	-- Fast Ethernet Network Controller
	ENET_DATA  <= (others => 'Z');  	-- DM9000A Data
	ENET_CLK   <= '0';  						-- DM9000A Clock 25 MHz
	ENET_CMD   <= '0';  						-- DM9000A Command/Data Select, 0=Command, 1=Data
	ENET_CS_N  <= '0';  						-- DM9000A Chip Select
	ENET_RD_N  <= '0';  						-- DM9000A Read
	ENET_WR_N  <= '0';  						-- DM9000A Write
	ENET_RST_N <= '0';  						-- DM9000A Reset
	
	-- TV Decoder (ADV7181)
	------------------------------------------------------------
	-- NOTE: ADV7181 is controlled by the I2C bus
	--       I2C ADDRESS READ  is 0x40
	--       I2C ADDRESS WRITE is 0x41
	------------------------------------------------------------
	TD_RESET <= '0';  						-- TV Decoder Reset
	
	-- USB Controller (Philips ISP1362)
	OTG_ADDR    <= (others => '0');  	-- ISP1362 Address
	OTG_DATA    <= (others => 'Z');  	-- ISP1362 Data
	OTG_CS_N    <= '0';							-- ISP1362 Chip Select
	OTG_RD_N    <= '0';							-- ISP1362 Read
	OTG_WR_N    <= '0';							-- ISP1362 Write
	OTG_RST_N   <= '0';							-- ISP1362 Reset
	OTG_DACK0_N <= '0';							-- ISP1362 DMA Acknowledge 0
	OTG_DACK1_N <= '0';							-- ISP1362 DMA Acknowledge 1
	OTG_FSPEED  <= 'Z';							-- USB Full Speed, 0=Enable, Z=Disable
	OTG_LSPEED  <= 'Z';							-- USB Low  Speed, 0=Enable, Z=Disable
	
	-- Infrared Transceiver (Agilent HSDL-3201)
	IRDA_TXD <= '0';  -- IRDA Transmitter		
		
	-- DRAM (8-Mbyte SDRAM)
--	DRAM_ADDR  <= (others => '0');  -- SDRAM Address
--	DRAM_DQ    <= (others => 'Z');  -- SDRAM Data
--	DRAM_BA_0  <= (others => '0');                      -- SDRAM Bank Address 0
--	DRAM_BA_1  <= (others => '0');                      -- SDRAM Bank Address 1
--	DRAM_LDQM  <= (others => '0');                      -- SDRAM Low-byte  Data Mask
--	DRAM_UDQM  <= (others => '0');                      -- SDRAM High-byte Data Mask
--	DRAM_RAS_N <= '0';                      -- SDRAM Row    Address Strobe
--	DRAM_CAS_N <= '0';                      -- SDRAM Column Address Strobe
--	DRAM_CKE   <= '0';                      -- SDRAM Clock Enable
--	DRAM_CLK   <= '0';                      -- SDRAM Clock 
--	DRAM_WE_N  <= '0';                      -- SDRAM Write Enable
--	DRAM_CS_N  <= '0';                      -- SDRAM Chip Select
	
	-- SRAM (512-Kbyte SRAM)
	SRAM_ADDR  <= (others => '0');  -- SRAM Address
	SRAM_DQ    <= (others => 'Z');  -- SRAM Data
	SRAM_WE_N  <= '0';                      -- SRAM Write  Enable
	SRAM_OE_N  <= '0';                      -- SRAM Output Enable
	SRAM_UB_N  <= '0';                      -- SRAM High-byte Data Mask
	SRAM_LB_N  <= '0';                      -- SRAM Low-byte  Data Mask
	SRAM_CE_N  <= '0';                      -- SRAM Chip Enable
	
	-- Flash (4-Mbyte Flash)
	FL_ADDR  <= (others => '0');  -- Flash Address
	FL_DQ    <= (others => 'Z');   -- Flash Data
	FL_CE_N  <= '0';                      -- Flash Chip Enable
	FL_OE_N  <= '0';                      -- Flash Output Enable
	FL_RST_N <= '0';                      -- Flash Reset
	FL_WE_N  <= '0';                      -- Flash Write Enable
	
	-- SD Card Socket
	SD_DAT   <= 'Z';
	SD_DAT3  <= '0';
	SD_CMD   <= '0';
	SD_CLK   <= '0';
	
	

end behavioral;


