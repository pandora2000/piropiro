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

  -- matsuo fib 
  type ram_t is array (0 to 31) of std_logic_vector(35 downto 0);
  signal ram : ram_t := (x"000000000",x"000000000",x"0D8200000",x"030200001",
                         x"030400005",x"030A0001D",x"200000008",x"40000001D",
                         x"0E040000F",x"0E0410011",x"0C0450000",x"034A50003",
                         x"034420001",x"200000008",x"0D0450000",x"0C8650001",
                         x"034A50003",x"034420002",x"200000008",x"0D8850001",
                         x"040632000",x"030A50003",x"100000000",x"040600000",
                         x"030A50003",x"100000000",x"040600800",x"030A50003",
                         x"100000000",x"040630000",x"40000001D",x"000000000");
                           
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
    
