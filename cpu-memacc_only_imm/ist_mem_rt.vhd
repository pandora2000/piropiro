library std, ieee;
use STD.textio.all;
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

  type ram_t is array (0 to 16383) of bit_vector(31 downto 0);
  
  impure function InitRomFromFile (RomFileName : in string) return ram_t is
    FILE RomFile : text;
    variable RomFileLine : line;
    variable ROM : ram_t;
  begin
    file_open(RomFile, RomFileName, READ_MODE);
    for I in 0 to 9208 loop
      readline (RomFile, RomFileLine);
      read (RomFileLine, ROM(I));
    end loop;
    file_close(RomFile);
    return ROM;
  end function;

  signal ram : ram_t := InitRomFromFile("./a.k");
                           
begin

  write: process(clk)
  begin
    if rising_edge(clk) then
      ist <= to_stdlogicvector(ram(conv_integer(pc)));
      if w = '1' then
        ram(conv_integer(addr_w)) <= to_bitvector(data);
      end if;
    end if;
  end process;
  
end behavior;
    
