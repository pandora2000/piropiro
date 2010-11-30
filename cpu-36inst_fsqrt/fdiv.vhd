library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity fdiv is
  port (
    clk          : in std_logic;
    start        : in std_logic;
    data1, data2 : in std_logic_vector(31 downto 0);  -- data1/data2
    result       : out std_logic_vector(31 downto 0);
    finish       : out std_logic);
end fdiv;

architecture behavior of fdiv is 

  signal dr             : std_logic_vector(25 downto 0);
  signal zr             : std_logic_vector(25 downto 0);
  signal nd             : std_logic_vector(25 downto 0);
  signal q              : std_logic_vector(25 downto 0);
  signal mul1, mul2     : std_logic_vector(51 downto 0);
  signal count1         : std_logic_vector(2 downto 0) := "000";
  signal count2         : std_logic_vector(2 downto 0) := "000";
  signal sign           : std_logic;
  signal man_s          : std_logic_vector(24 downto 0);
  signal diff           : std_logic_vector(1 downto 0);
  signal exp            : std_logic_vector(7 downto 0);
  signal data1s, data2s : std_logic_vector(8 downto 0);
  signal zero           : std_logic;
  
begin 
  
  nd <= (not dr) + 1;
  mul1 <= dr * nd;
  mul2 <= zr * nd;                         

  -- 5回反復
  div: process (clk)
  begin 
    if rising_edge(clk) then
      if count1 = 0 then
        if start = '1' then 
          dr <= "01" & data2(22 downto 0) & '0';
          zr <= "01" & data1(22 downto 0) & '0';
          data1s <= data1(31 downto 23);
          data2s <= data2(31 downto 23);
          count1 <= "101";
          if data1(30 downto 0) = 0 then
            zero <= '1';
          else
            zero <= '0';
          end if;
        end if;
      else
        if count1 = "001" then
          q <= mul2(50 downto 25);
        else
          dr <= mul1(50 downto 25);
          zr <= mul2(50 downto 25);
        end if;
        count1 <= count1 - 1;
      end if;
    end if;
  end process;

  man_s <= ('0' & q(25 downto 2)) + q(1) when q(25) = '1' else 
           ('0' & q(24 downto 1)) + q(0);

  diff <= "10" when q(25) = '1' and man_s(24) = '1' else
          "01" when q(25) = '1' or man_s(24) = '1' else 
          "00";

  exp <= data1s(7 downto 0) + (not data2s(7 downto 0)) + 127 + diff;

  sign <= data1s(8) xor data2s(8);

  result <= (others => '0')                 when zero = '1' else
            sign & exp & man_s(22 downto 0) when man_s(24) = '0' else
            sign & exp & man_s(23 downto 1);

  finish <= '1' when count2 = "001" else '0';
 
  ct2: process (clk)
  begin 
    if rising_edge(clk) then
      if start = '1' then
        count2 <= "110";
      elsif count2 /= 0 then
        count2 <= count2 - 1;
      end if;
    end if;
  end process;

end behavior;
