library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sram_sim is
  port (
    clk, xw  : in std_logic;
    addr     : in std_logic_vector (19 downto 0);
    data_in  : in std_logic_vector (31 downto 0);
    data_out : out std_logic_vector (31 downto 0));
end sram_sim;

architecture behavior of sram_sim is

  type ram_t is array (0 to 31) of std_logic_vector (31 downto 0);
  signal ram : ram_t := (0 => x"3F800000",
                         others => x"00000000");
  
  signal xw0, xw1               : std_logic := '1';
  signal addr_tmp, addr0, addr1 : std_logic_vector(4 downto 0);
  signal data_in0, data_in1     : std_logic_vector(31 downto 0);
  
begin

  addr_tmp <= addr(4 downto 0);
  
  write: process (clk)
  begin  
    if clk'event and clk = '1' then
      xw0 <= xw;
      xw1 <= xw0;
      addr0 <= addr_tmp;
      addr1 <= addr0;
      data_in0 <= data_in;
      data_in1 <= data_in0;
      if xw0 = '1' then
        data_out <= ram(conv_integer(addr0));
      end if;
      if xw1 = '0' then
        ram(conv_integer(addr1)) <= data_in1;
      end if;
    end if;
  end process;
  
end behavior;
    
