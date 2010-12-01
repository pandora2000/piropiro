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

  -- moriya fib (register as displacement vesion)
  type ram_t is array (0 to 63) of std_logic_vector(35 downto 0);
  signal ram : ram_t := (x"000000000",x"000000000",x"030400FFF",x"030604268",
                         x"03863000A",x"030800005",x"200000008",x"400000022",
                         x"034420002",x"030A00000",x"0E4850004",x"030800000",
                         x"030420002",x"100000000",x"030A00001",x"0E4850004",
                         x"030800001",x"030420002",x"100000000",x"030A00001",
                         x"024A42800",x"0C0820000",x"020802800",x"200000008",
                         x"030A00002",x"0D0C20000",x"024A62800",x"0C0820001",
                         x"020802800",x"200000008",x"0D0A20001",x"020852000",
                         x"030420002",x"100000000",x"0C0800FFF",x"020840000",
                         x"400000022",x"000000000",x"000000000",x"000000000",
                         x"000000000",x"000000000",x"000000000",x"000000000",
                         x"000000000",x"000000000",x"000000000",x"000000000",
                         x"000000000",x"000000000",x"000000000",x"000000000",
                         x"000000000",x"000000000",x"000000000",x"000000000",
                         x"000000000",x"000000000",x"000000000",x"000000000",
                         x"000000000",x"000000000",x"000000000",x"000000000");
                           
begin

  write: process(clk)
  begin
    if rising_edge(clk) then
      ist <= ram(conv_integer(pc(5 downto 0)));
      if w = '1' then
        ram(conv_integer(addr_w(5 downto 0))) <= data;
      end if;
    end if;
  end process;
  
end behavior;
    
