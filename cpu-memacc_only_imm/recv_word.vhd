library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity recv_word is
  port (
    clk   : in std_logic;
    rx    : in std_logic;
    data  : out std_logic_vector (31 downto 0);
    ready : out std_logic);
end recv_word;

architecture behavior of recv_word is

  component recv_232c
    generic (
      wtime : std_logic_vector (15 downto 0) := x"1ADB");
    port (
      clk   : in std_logic;
      rx    : in std_logic; 
      data  : out std_logic_vector (7 downto 0);
      ready : out std_logic);
  end component;
  signal rxdata : std_logic_vector (7 downto 0);
  signal byte_ready : std_logic := '0';

  signal state : std_logic_vector(2 downto 0) := "000";
  signal data_tmp : std_logic_vector (31 downto 0) := x"00000000";

begin 

  recv_word: process (clk)
  begin 
    if rising_edge(clk) then
      case state is
        when "100" =>
          data <= data_tmp;
          ready <= '1';
          state <= "000";
        when others =>
          if byte_ready = '1' then
            data_tmp <= data_tmp(23 downto 0) & rxdata;
            state <= state + 1;
          end if;
          ready <= '0';
      end case;
    end if;
  end process;

  revc: recv_232c generic map (wtime => x"0243")
                  port map (clk, rx, rxdata, byte_ready);

end behavior;
