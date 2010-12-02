library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.all;

entity bshifter_l_foi is
  port (
    input  : in bit_vector(30 downto 0);
    nshift : in bit_vector(4 downto 0);  -- シフト量
    output : out bit_vector(30 downto 0));
end bshifter_l_foi;

architecture behavior of bshifter_l_foi is 
begin
  with nshift select 
  output <= input 	 when "00000",
            input sll 1  when "00001", 
            input sll 2  when "00010",
            input sll 3  when "00011",
            input sll 4  when "00100",
            input sll 5  when "00101", 
	    input sll 6  when "00110", 
	    input sll 7  when "00111", 
	    input sll 8  when "01000", 
	    input sll 9  when "01001", 
	    input sll 10 when "01010", 
	    input sll 11 when "01011", 
	    input sll 12 when "01100", 
	    input sll 13 when "01101", 
	    input sll 14 when "01110", 
	    input sll 15 when "01111", 
	    input sll 16 when "10000", 
	    input sll 17 when "10001", 
	    input sll 18 when "10010", 
	    input sll 19 when "10011", 
	    input sll 20 when "10100", 
	    input sll 21 when "10101", 
	    input sll 22 when "10110", 
	    input sll 23 when "10111", 
	    input sll 24 when "11000", 
	    input sll 25 when "11001",
            input sll 26 when "11010",
            input sll 27 when "11011",
            input sll 28 when "11100",
            input sll 29 when "11101",
            input sll 30 when "11110",
            input        when others;
				
end behavior;
