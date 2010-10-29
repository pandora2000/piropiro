library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity send_buffer is
  port (
    clk      : in std_logic;
    unitmiss : in std_logic_vector(3 downto 0);
    send_cmt : in std_logic;
    data_in  : in std_logic_vector(7 downto 0);
    send_pmt : out std_logic;
    data_out : out std_logic_vector(7 downto 0));
end send_buffer;

architecture behavior of send_buffer is

  type ram_t is array (0 to 4095) of std_logic_vector(7 downto 0);
  signal ram : ram_t;

  signal head, tail : std_logic_vector(11 downto 0) := (others => '0');
  
begin  

  write_read: process (clk)
  begin 
    if rising_edge(clk) then
      if unitmiss = "1000" then
        ram(conv_integer(head)) <= data_in;
        head <= head + 1;
      end if;
      if send_cmt = '1' then
        tail <= tail + 1;
      end if;
      if head = tail then
        send_pmt <= '0';
      else
        send_pmt <= '1';
      end if;
      data_out <= ram(conv_integer(tail));
    end if;
  end process;

end behavior;
