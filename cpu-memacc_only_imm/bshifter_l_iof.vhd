library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.all;

entity bshifter_l_iof is
  port (
    input  : in bit_vector(15 downto 0);
    nshift : in bit_vector(2 downto 0);  -- シフト量
    output : out bit_vector(15 downto 0));
end bshifter_l_iof;

architecture behavior of bshifter_l_iof is 
begin
  with nshift select 
  output <= input 	    when "000",
            input sll 1     when "001", 
            input sll 2     when "010",
            input sll 3     when "011",
            input sll 4     when "100",
            input sll 5     when "101", 
	    input sll 6     when "110", 
	    input sll 7     when "111", 
            (others => '0') when others;
				
end behavior;
