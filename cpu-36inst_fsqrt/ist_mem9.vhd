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

  -- fdiv test
  type ram_t is array (0 to 15) of std_logic_vector(31 downto 0);
  signal ram : ram_t := (x"00000000",x"00000000",x"30200000",x"30400000",
                         x"30600000",x"30800000",x"10010000",x"10020000",
                         x"10030000",x"10040000",x"C3FFFFFF",x"00000000",
                         x"00000000",x"00000000",x"00000000",x"00000000");

                           
begin

  write: process(clk)
  begin
    if rising_edge(clk) then
      ist <= ram(conv_integer(pc(3 downto 0)));
      if w = '1' then
        ram(conv_integer(addr_w)) <= data;
      end if;
    end if;
  end process;
  
end behavior;
    
