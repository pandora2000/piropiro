library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity alu is
  port (
    src1, src2 : in std_logic_vector (31 downto 0);
    op         : in std_logic_vector (2 downto 0);
    result     : out std_logic_vector (31 downto 0));
end alu;

architecture behavior of alu is
begin 

  result <= src1 + src2   when op = "001" else
            src1 - src2   when op = "010" else
            src1(15 downto 0) * src2(15 downto 0) when op = "011" else
            src1 nor src2 when op = "110" else
            src1 xor src2 when op = "111" else
            (others => '0');

end behavior;

  
  
  
  
