library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity alu is
  port (
    src1, src2 : in std_logic_vector (31 downto 0);
    op         : in std_logic_vector (1 downto 0);
    result     : out std_logic_vector (31 downto 0));
end alu;

architecture behavior of alu is
begin 

  result <= src1 + src2   when op = "00" else
            src1 - src2   when op = "01" else
            src1(15 downto 0) * src2(15 downto 0) when op = "10" else
            src1 xor src2 when op = "11" else
            (others => '0');

end behavior;

  
  
  
  
