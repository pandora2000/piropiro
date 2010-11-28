library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity addr_cal is
  port (
    reg_or_imm   : in std_logic;
    data1, data2 : in std_logic_vector(31 downto 0);
    imm          : in std_logic_vector(31 downto 0);
    addr         : out std_logic_vector(19 downto 0));
end addr_cal;

architecture structure of addr_cal is

  signal addr0 : std_logic_vector(31 downto 0);
  
begin 

  addr0 <= data1 + data2 when reg_or_imm = '0' else
           data1 + imm;  
  
  addr <= addr0(19 downto 0);
  
end structure;
