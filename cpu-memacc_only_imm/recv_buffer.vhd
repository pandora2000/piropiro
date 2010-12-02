library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity recv_buffer is
  port (
    clk       : in std_logic;
    ist_set   : in std_logic;
    ready     : in std_logic;
    unit      : in std_logic_vector(2 downto 0);
    r_or_f    : in std_logic;
    data_in   : in std_logic_vector(31 downto 0);
    rd_finish : out std_logic;
    rd_port   : out std_logic_vector(1 downto 0);
    data_out  : out std_logic_vector(31 downto 0));
end recv_buffer;

architecture behavior of recv_buffer is

  type ram_t is array (0 to 511) of std_logic_vector(31 downto 0);
  signal ram : ram_t;

  signal head       : std_logic_vector(8 downto 0) := (others => '0');
  signal tail       : std_logic_vector(8 downto 0) := (others => '0');
  signal valid, go  : std_logic := '0';
  signal rd_finish0 : std_logic;
  signal r_or_f0    : std_logic;
  
begin  

  write_read: process (clk)
  begin 
    if rising_edge(clk) then
      if ist_set = '0' and ready = '1' then
        ram(conv_integer(head)) <= data_in;
        head <= head + 1;
      end if;
      if rd_finish0 = '1' then
        tail <= tail + 1;
      end if;
      if unit = "101" and rd_finish0 = '0' then
        go <= '1';
        r_or_f0 <= r_or_f;
      elsif head /= tail then
        go <= '0';
      end if;
    end if;
  end process;

  data_out <= ram(conv_integer(tail));

  rd_finish0 <= '1' when head /= tail and (unit = "101" or go = '1') else
                '0';

  rd_port <= '0' & rd_finish0 when (r_or_f = '0' and unit = "101") or 
                                   (r_or_f0 = '0' and go = '1') else
             rd_finish0 & '0'; 

  rd_finish <= rd_finish0;

end behavior;
