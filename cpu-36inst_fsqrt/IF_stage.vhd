library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity IF_stage is 
  port (
    ist_set         : in std_logic;
    clk, missprd    : in std_logic;
    next_pc, brc_pc : in std_logic_vector(13 downto 0); 
    pc              : out std_logic_vector(13 downto 0); 
    pc_out          : out std_logic_vector(13 downto 0));
end IF_stage;

architecture behavior of IF_stage is

  signal pc0 : std_logic_vector(13 downto 0);

begin 

  pc0 <= (others => '0') when ist_set = '1' else
         brc_pc          when missprd = '1' else
         next_pc;

  pc <= pc0;
  
  to_ID: process (clk)
  begin  
    if rising_edge(clk) then
      pc_out <= pc0;
    end if;
  end process;

end behavior;
