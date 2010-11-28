library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ret_stack is
  port (
    clk        : in std_logic;
    push, pop  : in std_logic;
    data_w     : in std_logic_vector(13 downto 0);
    data_r     : out std_logic_vector(13 downto 0));
end ret_stack;

architecture behavior of ret_stack is

  type ram_t is array (0 to 63) of std_logic_vector(13 downto 0);
  signal ram       : ram_t;
  signal top       : std_logic_vector(5 downto 0) := (others => '1');
  signal top_above : std_logic_vector(5 downto 0) := (others => '1');
  
begin

  top_above <= top + 1;
  
  write_read: process (clk)
  begin  
    if rising_edge(clk) then
      if push = '1' then
        ram(conv_integer(top_above)) <= data_w;
        top <= top_above;
      elsif pop = '1' then
        top <= top - 1;
      end if;
    end if;     
  end process;

  data_r <= ram(conv_integer(top));
  
end behavior;
    
