library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity reg_file is
  port (
    clk              : in std_logic;
    w1, w2, w3, w4   : in std_logic;  
    addr_r1, addr_r2 : in std_logic_vector(4 downto 0);
    addr_r3          : in std_logic_vector(4 downto 0);
    addr_w1, addr_w2 : in std_logic_vector(4 downto 0);
    addr_w3, addr_w4 : in std_logic_vector(4 downto 0);
    data_w1, data_w2 : in std_logic_vector(31 downto 0);
    data_w3, data_w4 : in std_logic_vector(31 downto 0);
    data_r1, data_r2 : out std_logic_vector(31 downto 0);
    data_r3          : out std_logic_vector(31 downto 0));
end reg_file;

architecture behavior of reg_file is

  type ram_t is array (0 to 31) of std_logic_vector (31 downto 0);
  signal ram : ram_t;
  
begin
  
  write_data: process (clk)
  begin  
    if rising_edge(clk) then
      if w1 = '1' then
        ram(conv_integer(addr_w1)) <= data_w1;
      end if;
      if w2 = '1' then
        ram(conv_integer(addr_w2)) <= data_w2;
      end if;
      if w3 = '1' then
        ram(conv_integer(addr_w3)) <= data_w3;
      end if;
      if w4 = '1' then
        ram(conv_integer(addr_w4)) <= data_w4;
      end if;
    end if;
  end process;

  data_r1 <= ram(conv_integer(addr_r1));
  data_r2 <= ram(conv_integer(addr_r2));
  data_r3 <= ram(conv_integer(addr_r3));
  
end behavior;
    
