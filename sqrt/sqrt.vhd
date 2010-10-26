library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity sqrt is
  port (
    f_in : in std_logic_vector (31 downto 0);
    clk : in std_logic;
    f_out : out std_logic_vector (31 downto 0)); 
end sqrt;

architecture behavior of sqrt is
  signal f_in0,f_in1,f_in3 : std_logic_vector(31 downto 0);
  signal f_in2 : std_logic_vector(32 downto 0);
  signal f_in11 : std_logic_vector(23 downto 0);
  signal MQ : std_logic_vector(26 downto 0);
  signal exp,exp1,exp2 : std_logic_vector(7 downto 0);
  signal y : std_logic_vector(15 downto 0);
  signal y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,y16 : std_logic_vector(15 downto 0);
  signal y17 : std_logic_vector(16 downto 0);
  signal y18 : std_logic_vector(17 downto 0);
  signal y19 : std_logic_vector(18 downto 0);
  signal y20 : std_logic_vector(19 downto 0);
  signal y21 : std_logic_vector(20 downto 0);
  signal y22 : std_logic_vector(21 downto 0);
  signal y23 : std_logic_vector(22 downto 0);
  signal y24 : std_logic_vector(23 downto 0);
  signal y25 : std_logic_vector(24 downto 0);
  signal y26 : std_logic_vector(25 downto 0);
  signal I : integer;
begin
  latch0: process(clk)
  begin
   if rising_edge(clk) then
	 f_in0 <= f_in;
	end if;
  end process;
  exp <= f_in0(30 downto 23) - "01111111";
  exp1 <= (exp(7)& exp(7 downto 1))+"01111111";
  latch1 : process(clk)
  begin
   if rising_edge(clk) then
	 f_in1 <= f_in0;
	 exp2 <= exp1;
	end if;
  end process;
  f_in11 <= '1' & f_in1(22 downto 0);
  f_in2 <= f_in11 * "100000000";
  f_in3 <= f_in2(31 downto 0) when f_in0(23) = '1' else '0' & f_in2(31 downto 1);
  y <= "1000000000000000";
  check1: process(clk)
  begin
   if rising_edge(clk) then
	 if y * y <= f_in3 then
	  y1 <= y + "1000000000000000";
	 else
	  y1 <= y - "1000000000000000";
	 end if;
	 if y1 * y1 <= f_in3 then
	  y2 <= y1 + "100000000000000";
	 else
	  y2 <= y1 - "100000000000000";
	 end if;
	 if y2 * y2 <= f_in3 then
	  y3 <= y2 + "10000000000000";
	 else
	  y3 <= y2 - "10000000000000";
	 end if;
	 if y3 * y3 <= f_in3 then
	  y4 <= y3 + "1000000000000";
	 else
	  y4 <= y3 - "1000000000000";
	 end if;
	 if y4 * y4 <= f_in3 then
	  y5 <= y4 + "100000000000";
	 else
	  y5 <= y4 - "100000000000";
	 end if;
	 if y5 * y5 <= f_in3 then
	  y6 <= y5 + "10000000000";
	 else
	  y6 <= y5 - "10000000000";
	 end if;
	 if y6 * y6 <= f_in3 then
	  y7 <= y6 + "1000000000";
	 else
	  y7 <= y6 - "1000000000";
	 end if;
	 if y7 * y7 <= f_in3 then
	  y8 <= y7 + "100000000";
	 else
	  y8 <= y7 - "100000000";
	 end if;
	 if y8 * y8 <= f_in3 then
	  y9 <= y8 + "10000000";
	 else
	  y9 <= y8 - "10000000";
	 end if;
	 if y9 * y9 <= f_in3 then
	  y10 <= y9 + "1000000";
	 else
	  y10 <= y9 - "1000000";
	 end if;
	 if y10 * y10 <= f_in3 then
	  y11 <= y10 + "100000";
	 else
	  y11 <= y10 - "100000";
	 end if;
	 if y11 * y11 <= f_in3 then
	  y12 <= y11 + "10000";
	 else
	  y12 <= y11 - "10000";
	 end if;
	 if y12 * y12 <= f_in3 then
	  y13 <= y12 + "1000";
	 else
	  y13 <= y12 - "1000";
    end if;
	 if y13 * y13 <= f_in3 then
	  y14 <= y13 + "100";
	 else
	  y14 <= y13 - "100";
	 end if;
	 if y14 * y14 <= f_in3 then
	  y15 <= y14 + "10";
	 else
	  y15 <= y14 - "10";
	 end if;
	 if y15 * y15 <= f_in3 then
	  y16 <= y15 + '1';
	 else
	  y16 <= y15 - '1';
	 end if;
	 if y16 * y16 <= f_in3 then
	  y17 <= y16 * "10" + '1';
	 else
	  y17 <= y16 * "10" - '1';
	 end if;
	 if y17 * y17 <= f_in3 * "10" then
	  y18 <= y17 * "10" + '1';
	 else
	  y18 <= y17 * "10" - '1';
	 end if;
	 if y18 * y18 <= f_in3 * "100" then
	  y19 <= y18 * "10" + '1';
	 else
	  y19 <= y18 * "10" - '1';
	 end if;
	 if y19 * y19 <= f_in3 * "1000" then
	  y20 <= y19 * "10" + '1';
	 else
	  y20 <= y19 * "10" - '1';
	 end if;
	 if y20 * y20 <= f_in3 * "10000" then
	  y21 <= y20 * "10" + '1';
	 else
	  y21 <= y20 * "10" - '1';
	 end if;
	 if y21 * y21 <= f_in3 * "100000" then
	  y22 <= y21 * "10" + '1';
	 else
	  y22 <= y21 * "10" - '1';
	 end if;
	 if y22 * y22 <= f_in3 * "1000000" then
	  y23 <= y22 * "10" + '1';
	 else
	  y23 <= y22 * "10" - '1';
	 end if;
	 if y23 * y23 <= f_in3 * "10000000" then
	  y24 <= y23 * "10" + '1';
	 else
	  y24 <= y23 * "10" - '1';
	 end if;
	 if y24 * y24 <= f_in3 * "100000000" then
	  y25 <= y24 * "10" + '1';
	 else
	  y25 <= y24 * "10" - '1';
	 end if;
	 if y25 * y25 <= f_in3 * "1000000000" then
	  y26 <= y25 * "10" + '1';
	 else
	  y26 <= y25 * "10" - '1';
	 end if;
	end if;
  end process;
  MQ <= y26 + '1';
  f_out <= '0' & exp2 & MQ(24 downto 2);
end behavior;
