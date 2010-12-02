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

  -- moriya fib (register as displacement vesion)
  type ram_t is array (0 to 63) of std_logic_vector(31 downto 0);
  signal ram : ram_t := (x"00000000",x"00000000",x"24400FFF",x"24604268",
                         x"2C63000A",x"24800005",x"D0000008",x"C0000022",
                         x"28420002",x"24A00000",x"84850004",x"24800000",
                         x"24420002",x"E0000000",x"24A00001",x"84850004",
                         x"24800001",x"24420002",x"E0000000",x"24A00001",
                         x"08A42800",x"6C820000",x"04802800",x"D0000008",
                         x"24A00002",x"64C20000",x"08A62800",x"6C820001",
                         x"04802800",x"D0000008",x"64A20001",x"04852000",
                         x"24420002",x"E0000000",x"6C800FFF",x"04840000",
                         x"C0000023",x"00000000",x"00000000",x"00000000",
                         x"00000000",x"00000000",x"00000000",x"00000000",
                         x"00000000",x"00000000",x"00000000",x"00000000",
                         x"00000000",x"00000000",x"00000000",x"00000000",
                         x"00000000",x"00000000",x"00000000",x"00000000",
                         x"00000000",x"00000000",x"00000000",x"00000000",
                         x"00000000",x"00000000",x"00000000",x"00000000");
                           
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
    
