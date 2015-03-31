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
		q0                                :   IN   	std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
		q1                                :   IN   	std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
		q2                                :   IN   	std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
		q3                                :   IN   	std_logic_vector(13 DOWNTO 0);   -- ufix14_En14
		
		gx                                :   IN    	std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
		gy                                :   IN    	std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
		gz                                :   IN    	std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
		
		ax                                :   IN    	std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
		ay                                :   IN    	std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
		az                                :   IN    	std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
		
		mx                                :   IN    	std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
		my                                :   IN    	std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
		mz                                :   IN    	std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
		  
		-- outputs
		q0_out                            :   OUT   	std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
		q1_out                            :   OUT   	std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
		q2_out                            :   OUT   	std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
		q3_out                            :   OUT   	std_logic_vector(13 DOWNTO 0)   -- ufix14_En14
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
			  q01                               :   IN    std_logic_vector(13 DOWNTO 0);  -- sfix14_En12
			  q11                               :   IN    std_logic_vector(13 DOWNTO 0);  -- sfix14_En12
			  q21                               :   IN    std_logic_vector(13 DOWNTO 0);  -- sfix14_En12
			  q31                               :   IN    std_logic_vector(13 DOWNTO 0);  -- sfix14_En12
			  qdot11                            :   IN    std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
			  qdot21                            :   IN    std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
			  qdot31                            :   IN    std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
			  qdot41                            :   IN    std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
			  s0                                :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
			  s1                                :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
			  s2                                :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
			  s3                                :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
			  beta                              :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14_En17
			  sampletime                        :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14_En22
			  ceout                             :   OUT   std_logic;
			  q0                                :   OUT   std_logic_vector(13 DOWNTO 0);  -- sfix14_En12
			  q1                                :   OUT   std_logic_vector(13 DOWNTO 0);  -- sfix14_En12
			  q2                                :   OUT   std_logic_vector(13 DOWNTO 0);  -- sfix14_En12
			  q3                                :   OUT   std_logic_vector(13 DOWNTO 0)  -- sfix14_En12
			  );
	END COMPONENT;
	
	COMPONENT Madgwick_qDot_fixpt IS
	  PORT( clk                               :   IN    std_logic;
			  reset                             :   IN    std_logic;
			  clkenable                         :   IN    std_logic;
			  q0                                :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
			  q1                                :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
			  q2                                :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
			  q3                                :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
			  gx                                :   IN    std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
			  gy                                :   IN    std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
			  gz                                :   IN    std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
			  ceout                             :   OUT   std_logic;
			  qdot1                             :   OUT   std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
			  qdot2                             :   OUT   std_logic_vector(13 DOWNTO 0);  -- sfix14_En7
			  qdot3                             :   OUT   std_logic_vector(13 DOWNTO 0);  -- sfix14_En8
			  qdot4                             :   OUT   std_logic_vector(13 DOWNTO 0)  -- sfix14_En7
			  );
	END COMPONENT;
	
	COMPONENT Madgwick_normalize_fixpt IS
	  PORT( clk                               :   IN    std_logic;
			  reset                             :   IN    std_logic;
			  clkenable                         :   IN    std_logic;
			  ax1                               :   IN    std_logic_vector(13 DOWNTO 0);  -- sfix14_En9
			  ay1                               :   IN    std_logic_vector(13 DOWNTO 0);  -- sfix14_En9
			  az1                               :   IN    std_logic_vector(13 DOWNTO 0);  -- sfix14_En9
			  aw1                               :   IN    std_logic;  -- ufix1
			  ceout                             :   OUT   std_logic;
			  ax                                :   OUT   std_logic_vector(13 DOWNTO 0);  -- sfix14_En9
			  ay                                :   OUT   std_logic_vector(13 DOWNTO 0);  -- sfix14_En9
			  az                                :   OUT   std_logic_vector(13 DOWNTO 0);  -- sfix14_En9
			  aw                                :   OUT   std_logic  -- ufix1
			  );
	END COMPONENT;
	
	COMPONENT Madgwick_correction_fixpt IS
	  PORT( clk                               :   IN    std_logic;
			  reset                             :   IN    std_logic;
			  clkenable                         :   IN    std_logic;
			  q0                                :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
			  q1                                :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
			  q2                                :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
			  q3                                :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
			  ax                                :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
			  ay                                :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
			  az                                :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
			  mx                                :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
			  my                                :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
			  mz                                :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14_En14
			  ceout                             :   OUT   std_logic;
			  s0                                :   OUT   std_logic_vector(13 DOWNTO 0);  -- sfix14_En8
			  s1                                :   OUT   std_logic_vector(13 DOWNTO 0);  -- sfix14_En8
			  s2                                :   OUT   std_logic_vector(13 DOWNTO 0);  -- sfix14_En6
			  s3                                :   OUT   std_logic_vector(13 DOWNTO 0)  -- sfix14_En7
			  );
	END COMPONENT;

	----------------------------
	---- Signal Declaration ----
	----------------------------
	signal X : STD_LOGIC_VECTOR(31 downto 0);
	signal Y : STD_LOGIC_VECTOR(31 downto 0);

begin
		--------------------------------
		---- Component Instatiation ----
		--------------------------------
		
end architecture;