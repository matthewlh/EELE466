----------------------------------------------------------------------------------
--
-- Author(s):        David Keltgen
-- 					 	Matthew Handley
--
-- File:					Madgwick_seqments.vhd
--
-- Create Date:      03/31/2015
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

library Madgwick_correction;
library Madgwick_normalize;
library Madgwick_qDot;
library Madgwick_update;

entity Madgwick_seqments is 
	PORT(
		-- Clock stuff
		clk                               :   IN    	std_logic;
		reset                             :   IN    	std_logic;
		clkenable                         :   IN    	std_logic;
		
		-- inputs
		q0                                :   IN   	std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
		q1                                :   IN   	std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
		q2                                :   IN   	std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
		q3                                :   IN   	std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
		
		gx                                :   IN    	std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
		gy                                :   IN    	std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
		gz                                :   IN    	std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
		
		ax                                :   IN    	std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
		ay                                :   IN    	std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
		az                                :   IN    	std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
		
		mx                                :   IN    	std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
		my                                :   IN    	std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
		mz                                :   IN    	std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
		  
		-- outputs
		q0_out                            :   OUT   	std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
		q1_out                            :   OUT   	std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
		q2_out                            :   OUT   	std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
		q3_out                            :   OUT   	std_logic_vector(23 DOWNTO 0)  -- sfix24_En12
	  );
	  
end entity;

architecture Madgwick_seqments_arch of Madgwick_seqments is

	-------------------------------
	---- Component Declaration ----
	-------------------------------	
	
	COMPONENT Madgwick_update_fixpt IS
	  PORT( clk                               :   IN    std_logic;
			  reset                             :   IN    std_logic;
			  clkenable                         :   IN    std_logic;
			  
			  q01                               :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  q11                               :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  q21                               :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  q31                               :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  
			  qdot11                            :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  qdot21                            :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  qdot31                            :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  qdot41                            :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  
			  s0                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  s1                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  s2                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  s3                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  
			  beta                              :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  sampletime                        :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  
			  ceout                             :   OUT   std_logic;
			  q0                                :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  q1                                :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  q2                                :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  q3                                :   OUT   std_logic_vector(23 DOWNTO 0)  -- sfix24_En12
			  );
	END COMPONENT;
	
	COMPONENT Madgwick_qDot_fixpt IS
	  PORT( clk                               :   IN    std_logic;
			  reset                             :   IN    std_logic;
			  clkenable                         :   IN    std_logic;
			  q0                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  q1                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  q2                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  q3                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  gx                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  gy                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  gz                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  ceout                             :   OUT   std_logic;
			  qdot1                             :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  qdot2                             :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  qdot3                             :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  qdot4                             :   OUT   std_logic_vector(23 DOWNTO 0)  -- sfix24_En12
			  );
	END COMPONENT;
	
	COMPONENT Madgwick_normalize_fixpt IS
	  PORT( clk                               :   IN    std_logic;
			  reset                             :   IN    std_logic;
			  clkenable                         :   IN    std_logic;
			  ax1                               :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  ay1                               :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  az1                               :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  aw1                               :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  rsrresult                         :   IN    std_logic_vector(23 DOWNTO 0);  -- ufix24_En0
			  ceout                             :   OUT   std_logic;
			  ax                                :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  ay                                :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  az                                :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  aw                                :   OUT   std_logic_vector(23 DOWNTO 0)  -- sfix24_En12
			  );
	END COMPONENT;
	
	COMPONENT Madgwick_correction_fixpt IS
	  PORT( clk                               :   IN    std_logic;
			  reset                             :   IN    std_logic;
			  clkenable                         :   IN    std_logic;
			  q0                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  q1                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  q2                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  q3                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  ax                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  ay                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  az                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  mx                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  my                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  mz                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  ceout                             :   OUT   std_logic;
			  s0                                :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  s1                                :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  s2                                :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  s3                                :   OUT   std_logic_vector(23 DOWNTO 0)  -- sfix24_En12
			  );
	END COMPONENT;
	
	COMPONENT RSR is 
	port(
		CLK				: in 	STD_LOGIC;
		INPUT_X			: in  STD_LOGIC_VECTOR(31 downto 0);
		OUTPUT_Y			: out STD_LOGIC_VECTOR(31 downto 0)
	);
	  
	end COMPONENT;
	
	------------------------------
	---- Constant Declaration ----
	------------------------------
	constant beta			: std_logic_vector(23 DOWNTO 0) := x"00019A";	-- 0x00019A = 0.10009765625 in sfix24_En12
	constant sampleTime	    : std_logic_vector(23 DOWNTO 0) := x"000008";	-- 0x000008 = 1/512 in sfix24_En12

	----------------------------
	---- Signal Declaration ----
	----------------------------
	signal qdot1 		: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	signal qdot2 		: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	signal qdot3 		: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	signal qdot4 		: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	
	signal ax_norm		: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	signal ay_norm		: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	signal az_norm		: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	
	signal mx_norm		: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	signal my_norm		: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	signal mz_norm		: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	
	signal s0			: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	signal s1			: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	signal s2			: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	signal s3			: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	
	signal s0_norm		: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	signal s1_norm		: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	signal s2_norm		: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	signal s3_norm		: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	
	signal q0_updated	: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	signal q1_updated	: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	signal q2_updated	: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	signal q3_updated	: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	
	signal q0_norm		: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	signal q1_norm		: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	signal q2_norm		: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	signal q3_norm		: std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
	
	signal arsr_out	: STD_LOGIC_VECTOR(31 downto 0);
	signal mrsr_out	: STD_LOGIC_VECTOR(31 downto 0);
	signal srsr_out	: STD_LOGIC_VECTOR(31 downto 0);
	signal qrsr_out	: STD_LOGIC_VECTOR(31 downto 0);

begin
		--------------------------------
		---- Component Instatiation ----
		--------------------------------		
	
		qDot_0: component  Madgwick_qDot_fixpt 
			PORT MAP( 
				clk                               => clk,
				reset                             => reset,
				clkenable                         => clkenable,
				
				q0                                => q0,
				q1                                => q1,
				q2                                => q2,
				q3                                => q3,

				gx                                => gx,
				gy                                => gy,
				gz                                => gz,

				ceout                             => open,

				qdot1                             => qdot1,
				qdot2                             => qdot2,
				qdot3                             => qdot3,
				qdot4                             => qdot4
			);
			
	
		a_norm: component  Madgwick_normalize_fixpt 
			PORT MAP( 
				clk                               => clk,
				reset                             => reset,
				clkenable                         => clkenable,
				
				ax1                               => ax,
				ay1                               => ay,
				az1                               => az,
				aw1                               => x"000000",
				rsrresult						  => arsr_out,
				ceout                             => open,
				
				ax                                => ax_norm,
				ay                                => ay_norm,
				az                                => az_norm,
				aw                                => open
			  );
			  
		m_norm: component  Madgwick_normalize_fixpt 
			PORT MAP( 
				clk                               => clk,
				reset                             => reset,
				clkenable                         => clkenable,
				
				ax1                               => mx,
				ay1                               => my,
				az1                               => mz,
				aw1                               => x"000000",
				
				ceout                             => open,
				
				ax                                => mx_norm,
				ay                                => my_norm,
				az                                => mz_norm,
				aw                                => open
			  );
			  
			  
		correction_0: component  Madgwick_correction_fixpt 
			PORT MAP( 
				clk                               => clk,
				reset                             => reset,
				clkenable                         => clkenable,
				
				q0                                => q0,
				q1                                => q1,
				q2                                => q2,
				q3                                => q3,
				
				ax                                => ax_norm,
				ay                                => ay_norm,
				az                                => az_norm,
				
				mx                                => mx_norm,
				my                                => my_norm,
				mz                                => mz_norm,
				rsrresult						  => mrsr_out,
				ceout                             => open,
				
				s0                                => s0,
				s1                                => s1,
				s2                                => s2,
				s3                                => s3		
			);
			  
		s_norm: component  Madgwick_normalize_fixpt 
			PORT MAP( 
				clk                               => clk,
				reset                             => reset,
				clkenable                         => clkenable,
				
				ax1                               => s0,
				ay1                               => s1,
				az1                               => s2,
				aw1                               => s3,
				rsrresult						  => srsr_out,
				ceout                             => open,
				
				ax                                => s0_norm,
				ay                                => s1_norm,
				az                                => s2_norm,
				aw                                => s3_norm
			  );
			  
			  
		update: component  Madgwick_update_fixpt 
			PORT MAP( 
				clk                               => clk,
				reset                             => reset,
				clkenable                         => clkenable,
			
				q01                               => q0,
				q11                               => q1,
				q21                               => q2,
				q31                               => q3,
				
				qdot11                            => qdot1,
				qdot21                            => qdot2,
				qdot31                            => qdot3,
				qdot41                            => qdot4,
				
				s0                                => s0_norm,
				s1                                => s1_norm,
				s2                                => s2_norm,
				s3                                => s3_norm,
				
				beta                              => beta,
				sampletime                        => sampleTime,
				
				ceout                             => open,
				
				q0                                => q0_updated,
				q1                                => q1_updated,
				q2                                => q2_updated,
				q3                                => q3_updated
				
			);
			  
		q_norm: component  Madgwick_normalize_fixpt 
			PORT MAP( 
				clk                               => clk,
				reset                             => reset,
				clkenable                         => clkenable,
				
				ax1                               => q0_updated,
				ay1                               => q1_updated,
				az1                               => q2_updated,
				aw1                               => q3_updated,
				rsrresult						  => qrsr_out,
				ceout                             => open,
				
				ax                                => q0_norm,
				ay                                => q1_norm,
				az                                => q2_norm,
				aw                                => q3_norm
			);
			  
		q_rsr: component RSR
			PORT MAP (
				CLK								  => clk,
				INPUT_X							  => ((q0_updated * q0_updated) + (q1_updated * q1_updated) + (q2_updated * q2_updated) + (q3_updated * q3_updated)),
				OUTPUT_Y		 				  => qrsr_out,
			);	
		
		s_rsr: component RSR
		PORT MAP (
			CLK								  => clk,
			INPUT_X							  => ((s0 * s0) + (s1 * s1) + (s2 * s2) + (s3 * s3)),
			OUTPUT_Y		 				  => srsr_out,
		);	
		
		m_rsr: component RSR
		PORT MAP (
			CLK								  => clk,
			INPUT_X							  => ((mx * mx) + (my * my) + (mz * mz)),
			OUTPUT_Y		 				  => mrsr_out,
		);	
		
		a_rsr: component RSR
		PORT MAP (
			CLK								  => clk,
			INPUT_X							  => ((ax * ax) + (ay * ay) + (az * az),
			OUTPUT_Y		 				  => arsr_out,
		);	
		
		---------------------------
		---- Signal Assignment ----
		---------------------------
		
		q0_out <= q0_norm;
		q1_out <= q1_norm;
		q2_out <= q2_norm;
		q3_out <= q3_norm;
		
end architecture;