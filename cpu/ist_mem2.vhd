library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ist_mem is
  port (
    clk, w : in std_logic;     
    pc1, pc2 : in std_logic_vector(13 downto 0);
    addr_w : in std_logic_vector(13 downto 0);
    data : in std_logic_vector(31 downto 0);
    ist1, ist2 : out std_logic_vector(31 downto 0));
end ist_mem;

architecture behavior of ist_mem is

  -- moriya fib nop命令入り
  type ram_t is array (0 to 63) of std_logic_vector(31 downto 0);
  signal ram : ram_t := (x"00000000", x"00000000", x"2440001E", x"2460000A",
                         x"D0000007", x"00000000", x"C000001F", x"28420002",
                         x"24800000", x"8C640003", x"24600000", x"C000001D",
                         x"24800001", x"8C640003", x"24600001", x"C000001D",
                         x"24800001", x"08832000", x"64620000", x"04602000",
                         x"D0000007", x"24800002", x"60A20000", x"08852000",
                         x"64620001", x"04602000", x"D0000007", x"60820001",
                         x"04641800", x"24420002", x"E0000000", x"04601800",
                         x"C000001F", x"00000000", x"00000000", x"00000000",
                         x"00000000", x"00000000", x"00000000", x"00000000",
                         x"00000000", x"00000000", x"00000000", x"00000000",
                         x"00000000", x"00000000", x"00000000", x"00000000",
                         x"00000000", x"00000000", x"00000000", x"00000000",
                         x"00000000", x"00000000", x"00000000", x"00000000",
                         x"00000000", x"00000000", x"00000000", x"00000000",
                         x"00000000", x"00000000", x"00000000", x"00000000");
  
begin

  write: process(clk)
  begin
    if rising_edge(clk) then
      if w = '1' then
        ram(conv_integer(addr_w(5 downto 0))) <= data;
      end if;
      ist1 <= ram(conv_integer(pc1(5 downto 0)));
      ist2 <= ram(conv_integer(pc2(5 downto 0)));
    end if;
  end process;
  
end behavior;
    
