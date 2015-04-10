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
library Madgwick_update;
library Madgwick_qDot;

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
		q3_out                            :   OUT   	std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
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
			  q3                                :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
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
			  qdot4                             :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  );
	END COMPONENT;
	
	COMPONENT Madgwick_normalize_fixpt IS
	  PORT( clk                               :   IN    std_logic;
			  reset                             :   IN    std_logic;
			  clkenable                         :   IN    std_logic;
			  ax1                               :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  ay1                               :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  az1                               :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  aw1                               :   IN    std_logic;  -- ufix1
			  ceout                             :   OUT   std_logic;
			  ax                                :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  ay                                :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  az                                :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  aw                                :   OUT   std_logic  -- ufix1
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
			  s3                                :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
			  );
	END COMPONENT;

	----------------------------
	---- Signal Declaration ----
	----------------------------
	signal qdot1 		: std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
	signal qdot2 		: std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
	signal qdot3 		: std_logic_vector(13 DOWNTO 0);  -- sfix14_En8
	signal qdot4 		: std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
	
	signal ax_norm		: std_logic_vector(13 DOWNTO 0);  -- sfix14_En9
	signal ay_norm		: std_logic_vector(13 DOWNTO 0);  -- sfix14_En9
	signal az_norm		: std_logic_vector(13 DOWNTO 0);  -- sfix14_En9
	
	signal gx_norm		: std_logic_vector(13 DOWNTO 0);  -- sfix14_En9
	signal gy_norm		: std_logic_vector(13 DOWNTO 0);  -- sfix14_En9
	signal gz_norm		: std_logic_vector(13 DOWNTO 0);  -- sfix14_En9

begin
		--------------------------------
		---- Component Instatiation ----
		--------------------------------
		
	
		Madgwick_qDot_fixpt_0: component  Madgwick_qDot_fixpt 
			PORT MAP( 
				clk                               => clk,
				reset                             => '0',
				clkenable                         => '1',
				
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
				clk                               => ,
				reset                             => ,
				clkenable                         => ,
				
				ax1                               => ax,
				ay1                               => ay,
				az1                               => az,
				aw1                               => "",
				
				ceout                             => ,
				
				ax                                => ,
				ay                                => ,
				az                                => ,
				aw                                => 
			  );
	END COMPONENT;
		
end architecture;