library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity foi is
  port (
    clk    : in std_logic;
    data   : in std_logic_vector(31 downto 0);
    result : out std_logic_vector(31 downto 0));
end foi;

architecture behavior of foi is

  signal absv0, absv1 : std_logic_vector(30 downto 0);
  signal man          : std_logic_vector(22 downto 0);
  signal exp          : std_logic_vector(7 downto 0);
  signal round        : std_logic;
  signal sticky       : std_logic;
  signal sign1, sign2 : std_logic;

  component pencoder_foi
    port (
      input  : in std_logic_vector(30 downto 0);
      output : out std_logic_vector(4 downto 0));
  end component;
  signal nshift0, nshift1, nshift2 : std_logic_vector(4 downto 0);

  component bshifter_l_foi
    port (
      input  : in bit_vector(30 downto 0);
      nshift : in bit_vector(4 downto 0);  -- シフト量
      output : out bit_vector(30 downto 0));
  end component;
  signal absv_b         : bit_vector(30 downto 0);
  signal nshift_b       : bit_vector(4 downto 0);
  signal man_ss_b       : bit_vector(30 downto 0);
  signal man_ss         : std_logic_vector(30 downto 0);
  signal man_s1, man_s2 : std_logic_vector(24 downto 0);
                      
begin

  absv0 <= data(30 downto 0)           when data(31) = '0' else 
           (not data(30 downto 0)) + 1;

  pencoder: pencoder_foi port map (absv0, nshift0);

  latch0: process (clk)
  begin 
    if rising_edge(clk) then
      absv1 <= absv0;
      nshift1 <= nshift0;
      sign1 <= data(31);
    end if;
  end process;

  absv_b <= to_bitvector(absv1);
  nshift_b <= to_bitvector(nshift1);
  bshifter_l: bshifter_l_foi port map (absv_b, nshift_b, man_ss_b);
  man_ss <= to_stdlogicvector(man_ss_b);

  sticky <= '0' when man_ss(4 downto 0) = 0 else '1';

  round <= man_ss(6) and (man_ss(7) or man_ss(5) or sticky);

  man_s1 <= ('0' & man_ss(30 downto 7)) + round;

  latch1: process (clk)
  begin 
    if rising_edge(clk) then
      man_s2 <= man_s1;
      nshift2 <= nshift1;
      sign2 <= sign1;
    end if;
  end process;

  exp <= 158 + (not ("000" & nshift2)) + man_s2(24);

  man <= man_s2(22 downto 0) when man_s2(24) = '0' else 
         man_s2(23 downto 1);
  
  result <= (others => '0')      when man_s2 = 0 else
            sign2 & exp & man;

end behavior;
