library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity fmul is
  port (
    clk          : in std_logic;
    data1, data2 : in std_logic_vector(31 downto 0);
    result       : out std_logic_vector(31 downto 0));
end fmul;

architecture behavior of fmul is

  signal sign0, sign1, over  : std_logic;
  signal sign2               : std_logic;
  signal exp                 : std_logic_vector(7 downto 0);
  signal exp1_1, exp2_1      : std_logic_vector(7 downto 0);
  signal exp1_2, exp2_2      : std_logic_vector(7 downto 0);
  signal mul0, mul1          : std_logic_vector(47 downto 0);
  signal sticky              : std_logic;
  signal diff                : std_logic_vector(7 downto 0);
  signal round1, round2      : std_logic;
  signal man_s1, man_s2      : std_logic_vector(23 downto 0);
  signal zero0, zero1, zero2 : std_logic := '0'; 
  
begin

  sign0 <= data1(31) xor data2(31);

  mul0 <= ('1' & data1(22 downto 0)) * ('1' & data2(22 downto 0));

  zero0 <= '1' when data1(30 downto 0) = 0 or data2(30 downto 0) = 0 else
           '0';

  latch0: process (clk)
  begin 
    if rising_edge(clk) then
      sign1 <= sign0;
      mul1 <= mul0;
      exp1_1 <= data1(30 downto 23);
      exp2_1 <= data2(30 downto 23);
      zero1 <= zero0;
    end if;
  end process;
  
  sticky <= '0' when mul1(21 downto 0) = 0 else '1';

  round1 <= mul1(23) and (mul1(24) or mul1(22) or sticky);
  round2 <= mul1(22) and (mul1(23) or sticky);

  man_s1 <= mul1(47 downto 24) + round1 when mul1(47) = '1' else 
            mul1(46 downto 23) + round2;

  latch1: process (clk)
  begin 
    if rising_edge(clk) then
      sign2 <= sign1;
      exp1_2 <= exp1_1;
      exp2_2 <= exp2_1;
      over <= mul1(47);
      man_s2 <= man_s1;
      zero2 <= zero1;
    end if;
  end process;

  diff <= x"02" when over = '1' and man_s2(23) = '0' else
          x"01" when over = '1' or man_s2(23) = '0' else
          x"00";
  
  exp <= exp1_2 + exp2_2 - 127 + diff;
  
  result <= sign2 & "000" & x"0000000" when zero2 = '1' else
            sign2 & exp & man_s2(22 downto 0);

end behavior;
