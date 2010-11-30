library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ist_mem is
  port (
    clk, w : in std_logic;     
    pc     : in std_logic_vector(13 downto 0);
    addr_w : in std_logic_vector(13 downto 0);
    data   : in std_logic_vector(35 downto 0);
    ist    : out std_logic_vector(35 downto 0));
end ist_mem;

architecture behavior of ist_mem is

  type ram_t is array (0 to 16383) of std_logic_vector(35 downto 0);
  signal ram : ram_t;   
                           
begin

  write: process(clk)
  begin
    if rising_edge(clk) then
      if w = '1' then
        ram(conv_integer(addr_w)) <= data;
      end if;
      ist <= ram(conv_integer(pc));
    end if;
  end process;
  
end behavior;
    
