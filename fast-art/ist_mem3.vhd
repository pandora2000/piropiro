library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ist_mem is
  port (
    clk, w : in std_logic;     
    pc     : in std_logic_vector(13 downto 0);
    addr_w : in std_logic_vector(13 downto 0);
    data   : in std_logic_vector(31 downto 0);
    ist    : out std_logic_vector(31 downto 0));
end ist_mem;

architecture behavior of ist_mem is

  -- matsuo fib 
  type ram_t is array (0 to 31) of std_logic_vector(31 downto 0);
  signal ram : ram_t := (x"00000000", x"00000000", x"24200001", x"24400005",
                         x"24A0001D", x"D0000007", x"C000001C", x"8040000F",
                         x"80410011", x"6C450000", x"28A50003", x"28420001",
                         x"D0000007", x"64450000", x"6C650001", x"28A50003",
                         x"28420002", x"D0000007", x"64850001", x"04632000",
                         x"24A50003", x"E0000000", x"24600000", x"24A50003",
                         x"E0000000", x"24600001", x"24A50003", x"E0000000",
                         x"10030000", x"C3FFFFFF", x"00000000", x"00000000");
                           
begin

  write: process(clk)
  begin
    if rising_edge(clk) then
      ist <= ram(conv_integer(pc(4 downto 0)));
      if w = '1' then
        ram(conv_integer(addr_w(4 downto 0))) <= data;
      end if;
    end if;
  end process;
  
end behavior;
    