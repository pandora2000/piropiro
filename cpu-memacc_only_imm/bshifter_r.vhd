library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.all;

entity bshifter_r is
  port (
    signal input : in bit_vector (50 downto 0);
    signal nshift : in bit_vector (7 downto 0);  -- シフト量
    signal output : out bit_vector (50 downto 0));
end bshifter_r;

architecture behavior of bshifter_r is 
begin
  -- 今回は、26bit以上のシフトの必要はない。
  with nshift select 
  output <= input 	 when x"00",
            input srl 1  when x"01", 
            input srl 2  when x"02",
            input srl 3  when x"03",
            input srl 4  when x"04",
            input srl 5  when x"05", 
	    input srl 6  when x"06", 
	    input srl 7  when x"07", 
	    input srl 8  when x"08", 
	    input srl 9  when x"09", 
	    input srl 10 when x"0A", 
	    input srl 11 when x"0B", 
	    input srl 12 when x"0C", 
	    input srl 13 when x"0D", 
	    input srl 14 when x"0E", 
	    input srl 15 when x"0F", 
	    input srl 16 when x"10", 
	    input srl 17 when x"11", 
	    input srl 18 when x"12", 
	    input srl 19 when x"13", 
	    input srl 20 when x"14", 
	    input srl 21 when x"15", 
	    input srl 22 when x"16", 
	    input srl 23 when x"17", 
	    input srl 24 when x"18", 
	    input srl 25 when others;            
				
end behavior;
