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

  -- matsuo naiseki
  type ram_t is array (0 to 31) of std_logic_vector(31 downto 0);
  signal ram : ram_t := (x"00000000", x"00000000", x"24200000", x"2440000A",
                         x"40200000", x"70400800", x"70620800", x"48421800",
                         x"40211000", x"24210001", x"8422FFFB", x"40210000",
                         x"C000000B", x"00000000", x"00000000", x"00000000",
                         x"00000000", x"00000000", x"00000000", x"00000000",
                         x"00000000", x"00000000", x"00000000", x"00000000",
                         x"00000000", x"00000000", x"00000000", x"00000000",
                         x"00000000", x"00000000", x"00000000", x"00000000");
                           
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
    
