library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity fsqrt is
  port (
    clk    : in std_logic;
    start  : in std_logic;
    data   : in std_logic_vector(31 downto 0);
    result : out std_logic_vector(31 downto 0);
    finish : out std_logic);
end fsqrt;

architecture behavior of fsqrt is 

  signal x, y   : std_logic_vector(25 downto 0);
  signal z0     : std_logic_vector(26 downto 0);
  signal z1     : std_logic_vector(25 downto 0);
  signal xz0    : std_logic_vector(51 downto 0);
  signal xz1    : std_logic_vector(25 downto 0);
  signal xzz    : std_logic_vector(51 downto 0);
  signal yz     : std_logic_vector(51 downto 0);
  signal q      : std_logic_vector(25 downto 0);
  signal count1 : std_logic_vector(3 downto 0) := "0000";
  signal count2 : std_logic_vector(3 downto 0) := "0000";
  signal round  : std_logic;
  signal man_s  : std_logic_vector(24 downto 0);
  signal exp    : std_logic_vector(7 downto 0);
  
begin

  z0 <= "110000000000000000000000000" - ('0' & x);  -- 3 - x
  xz0 <= x * z0(26 downto 1);           -- x(3/2 - x/2)

  latch0: process (clk)
  begin 
    if rising_edge(clk) then
      z1 <= z0(26 downto 1);
      xz1 <= xz0(50 downto 25);
    end if;
  end process;

  xzz <= xz1 * z1;
  yz <= y * z1;

  -- 5回反復
  sqrt: process (clk)
  begin 
    if rising_edge(clk) then
      if count1 = 0 then
        if start = '1' then
          if data(23) = '0' then
            x <= "01" & data(22 downto 0) & '0';
            y <= "01" & data(22 downto 0) & '0';
            exp <= ('0' & data(30 downto 24)) + 63;
          else
            x <= "001" & data(22 downto 0);
            y <= "001" & data(22 downto 0);
            exp <= ('0' & data(30 downto 24)) + 64;
          end if;
          count1 <= "1010";
        end if;
      else
        if count1 = "0001" then
          q <= '0' & yz(49 downto 25);
        elsif count1(0) = '1' then
          x <= xzz(50 downto 25);
          y <= yz(50 downto 25);
        end if;
        count1 <= count1 - 1;
      end if;
    end if;
  end process;
  
  round <= q(0) and q(1);

  man_s <= q(25 downto 1) + round; 

  result <= '0' & exp & man_s(22 downto 0) when man_s(24) = '0' else
            '0' & (exp+1) & man_s(23 downto 1);

  finish <= '1' when count2 = "0001" else '0';

  ct2: process(clk)
  begin 
    if rising_edge(clk) then
      if start = '1' then
        count2 <= "1011";
      elsif count2 /= 0 then
        count2 <= count2 - 1;
      end if;
    end if;
  end process;

end behavior;
