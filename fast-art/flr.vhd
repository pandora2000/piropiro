library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity flr is
  port (
    clk    : in std_logic;
    data   : in std_logic_vector(31 downto 0);
    result : out std_logic_vector(31 downto 0));
end flr;

architecture behavior of flr is
  
  signal exp, exp1, exp2     : std_logic_vector(7 downto 0);
  signal ubrd0               : std_logic_vector(8 downto 0);
  signal ubrd1               : std_logic_vector(7 downto 0);
  signal mask                : std_logic_vector(22 downto 0);
  signal man_s0, man_s1      : std_logic_vector(24 downto 0);
  signal man_s2, man_s       : std_logic_vector(24 downto 0);
  signal man, man1, man2     : std_logic_vector(22 downto 0);
  signal round               : std_logic_vector(22 downto 0);
  signal sign1, sign2        : std_logic;
  signal rdpmt0, rdpmt1      : std_logic;
  signal ou0, ou1, ou2       : std_logic_vector(1 downto 0);
  signal zero0, zero1, zero2 : std_logic;
  
begin 

  ubrd0 <= 150 - ('0' & data(30 downto 23));

  ou0 <= "01" when ubrd0 = 0 or ubrd0(8) = '1' else   -- over
         "10" when ubrd0 = 23 else                    -- one 
         "11" when ubrd0 > 23 else                    -- under
         "00";

  zero0 <= '1' when data(30 downto 0) = 0 else '0';

  mask <= "11111111111111111111110" when ubrd0(7 downto 0) = x"01" else 
          "11111111111111111111100" when ubrd0(7 downto 0) = x"02" else 
          "11111111111111111111000" when ubrd0(7 downto 0) = x"03" else 
          "11111111111111111110000" when ubrd0(7 downto 0) = x"04" else 
          "11111111111111111100000" when ubrd0(7 downto 0) = x"05" else 
          "11111111111111111000000" when ubrd0(7 downto 0) = x"06" else 
          "11111111111111110000000" when ubrd0(7 downto 0) = x"07" else 
          "11111111111111100000000" when ubrd0(7 downto 0) = x"08" else 
          "11111111111111000000000" when ubrd0(7 downto 0) = x"09" else 
          "11111111111110000000000" when ubrd0(7 downto 0) = x"0A" else 
          "11111111111100000000000" when ubrd0(7 downto 0) = x"0B" else 
          "11111111111000000000000" when ubrd0(7 downto 0) = x"0C" else 
          "11111111110000000000000" when ubrd0(7 downto 0) = x"0D" else 
          "11111111100000000000000" when ubrd0(7 downto 0) = x"0E" else 
          "11111111000000000000000" when ubrd0(7 downto 0) = x"0F" else 
          "11111110000000000000000" when ubrd0(7 downto 0) = x"10" else
          "11111100000000000000000" when ubrd0(7 downto 0) = x"11" else 
          "11111000000000000000000" when ubrd0(7 downto 0) = x"12" else 
          "11110000000000000000000" when ubrd0(7 downto 0) = x"13" else 
          "11100000000000000000000" when ubrd0(7 downto 0) = x"14" else 
          "11000000000000000000000" when ubrd0(7 downto 0) = x"15" else
          "10000000000000000000000" when ubrd0(7 downto 0) = x"16" else 
          "00000000000000000000000";

  man_s0 <= "01" & (data(22 downto 0) and mask);
  
  rdpmt0 <= '0' when (data(22 downto 0) and (not mask)) = 0 else '1';

  latch0: process (clk)
  begin 
    if rising_edge(clk) then
      ubrd1 <= ubrd0(7 downto 0);
      ou1 <= ou0;
      rdpmt1 <= rdpmt0;
      man_s1 <= man_s0;
      man1 <= data(22 downto 0);         
      exp1 <= data(30 downto 23);
      sign1 <= data(31);
      zero1 <= zero0;
    end if;
  end process;

  round <= "00000000000000000000010" when ubrd1 = x"01" else 
           "00000000000000000000100" when ubrd1 = x"02" else 
           "00000000000000000001000" when ubrd1 = x"03" else 
           "00000000000000000010000" when ubrd1 = x"04" else 
           "00000000000000000100000" when ubrd1 = x"05" else 
           "00000000000000001000000" when ubrd1 = x"06" else 
           "00000000000000010000000" when ubrd1 = x"07" else 
           "00000000000000100000000" when ubrd1 = x"08" else 
           "00000000000001000000000" when ubrd1 = x"09" else 
           "00000000000010000000000" when ubrd1 = x"0A" else 
           "00000000000100000000000" when ubrd1 = x"0B" else 
           "00000000001000000000000" when ubrd1 = x"0C" else 
           "00000000010000000000000" when ubrd1 = x"0D" else 
           "00000000100000000000000" when ubrd1 = x"0E" else 
           "00000001000000000000000" when ubrd1 = x"0F" else 
           "00000010000000000000000" when ubrd1 = x"10" else
           "00000100000000000000000" when ubrd1 = x"11" else 
           "00001000000000000000000" when ubrd1 = x"12" else 
           "00010000000000000000000" when ubrd1 = x"13" else 
           "00100000000000000000000" when ubrd1 = x"14" else 
           "01000000000000000000000" when ubrd1 = x"15" else
           "10000000000000000000000" when ubrd1 = x"16" else 
           "00000000000000000000000";

  man_s <= man_s1 + ("00" & round) when sign1 = '1' and rdpmt1 = '1' else
           man_s1;

  latch1: process (clk)
  begin 
    if rising_edge(clk) then 
      ou2 <= ou1;
      man_s2 <= man_s;
      man2 <= man1;
      exp2 <= exp1;
      sign2 <= sign1;
      zero2 <= zero1;
    end if;
  end process;
  
  man <= man_s2(23 downto 1) when man_s2(24) = '1' else
         man_s2(22 downto 0);

  exp <= exp2 + man_s2(24);

  result <= x"C0000000"  when ou2 = "10" and sign2 = '1' and man2 /= 0 else
            sign2 & "011" & x"F800000" when ou2 = "10" else
            (others => '0')            when (ou2 = "11" and sign2 = '0') or 
                                            zero2 = '1' else
            x"BF800000"                when ou2 = "11" else
            sign2 & exp2 & man2        when ou2 = "01" else
            sign2 & exp & man;
  
end behavior;
