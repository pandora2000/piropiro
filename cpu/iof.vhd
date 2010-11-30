library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity iof is
  port (
    clk      : in std_logic;
    r_or_f   : in std_logic;
    unit     : in std_logic_vector(2 downto 0);
    missprd  : in std_logic;
    data     : in std_logic_vector(31 downto 0);
    unitmiss : out std_logic_vector(3 downto 0);
    result   : out std_logic_vector(7 downto 0));
end iof;

architecture behavior of iof is

  signal int_ss0, int_ss1  : std_logic_vector(15 downto 0);
  signal int_s1, int_s2    : std_logic_vector(15 downto 0);
  signal int_ss_b, int_s_b : bit_vector(15 downto 0);
  signal nshift0           : std_logic_vector(7 downto 0);
  signal nshift1           : std_logic_vector(7 downto 0);
  signal nshift_b          : bit_vector(2 downto 0);
  signal ou0, ou1, ou2     : std_logic_vector(1 downto 0);
  signal data1, data2      : std_logic_vector(7 downto 0);
  signal r_or_f1, r_or_f2  : std_logic;
  signal missprd0          : std_logic;
  signal unitmiss0         : std_logic_vector(3 downto 0);
  signal result0           : std_logic_vector(8 downto 0);
  
  component bshifter_l_iof
    port (
      input  : in bit_vector(15 downto 0);
      nshift : in bit_vector(2 downto 0);  -- シフト量
      output : out bit_vector(15 downto 0));
  end component;  

begin 

  nshift0 <= data(30 downto 23) - 127;

  ou0 <= "11" when nshift0 = x"FF" and data(31) = '0' else  -- 1
         "01" when nshift0(7) = '1' or data(31) = '1' else  -- under
         "00" when nshift0(7 downto 3) = 0 else 
         "10";                    -- over

  int_ss0 <= x"01" & data(22 downto 15);

  latch0: process (clk)
  begin 
    if rising_edge(clk) then
      nshift1 <= nshift0;
      ou1 <= ou0;
      int_ss1 <= int_ss0;
      r_or_f1 <= r_or_f;
      data1 <= data(7 downto 0);
      unitmiss0 <= unit & missprd0;
      missprd0 <= missprd;
    end if;
  end process;

  int_ss_b <= to_bitvector(int_ss1);
  nshift_b <= to_bitvector(nshift1(2 downto 0));
  bshifter: bshifter_l_iof port map (int_ss_b, nshift_b, int_s_b);
  int_s1 <= to_stdlogicvector(int_s_b);
 
  latch1: process (clk)
  begin 
    if rising_edge(clk) then
      ou2 <= ou1;
      int_s2 <= int_s1;
      r_or_f2 <= r_or_f1;
      data2 <= data1;
      unitmiss <= unitmiss0;
    end if;
  end process;

  result0 <= ('0' & int_s2(15 downto 8)) + int_s2(7);

  result <= data2              when r_or_f2 = '0' else
            x"01"              when ou2 = "11" else
            x"00"              when ou2 = "01" else
            x"FF"              when ou2 = "10" or result0(8) = '1' else 
            result0(7 downto 0);
  
end behavior;
