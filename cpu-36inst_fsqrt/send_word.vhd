library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity send_word is
  port (
    clk  : in  std_logic;
    data : in  std_logic_vector(31 downto 0);
    go   : in  std_logic;
    busy : out std_logic;
    tx   : out std_logic);
end send_word;

architecture behavior of send_word is
  
  component u232c is
    generic (wtime: std_logic_vector(15 downto 0) := x"1ADB");
    Port ( clk  : in  std_logic;
           data : in  std_logic_vector(7 downto 0);
           go   : in  std_logic;
           busy : out std_logic;
           tx   : out std_logic);
  end component;
  signal uart_data : std_logic_vector (7 downto 0) := x"00";
  signal uart_go   : std_logic;
  signal uart_busy : std_logic := '1';
  signal utx       : std_logic;

  signal state : std_logic_vector(1 downto 0) := "00";

begin 

  -- 4回に分けて4バイトを送信する
  send_word: process (clk)
  begin 
    if rising_edge(clk) then 
      if uart_busy = '0' and uart_go = '0' then
        case state is
          when "00" =>
            if go = '1' then
              busy <= '1';
              uart_data <= data(7 downto 0);
              uart_go <= '1';
              state <= state + 1;
            else
              busy <= '0';
            end if;
          when "01" =>
            uart_data <= data(15 downto 8);
            uart_go <= '1';
            state <= state + 1;
          when "10" =>
            uart_data <= data(23 downto 16);
            uart_go <= '1';
            state <= state + 1;
          when "11" =>
            uart_data <= data(31 downto 24);
            uart_go <= '1';
            state <= state + 1;
          when others => null;
        end case;
      else
        uart_go <= '0';
      end if;
    end if;
  end process;

  -- 1バイト送信
  u232c1 : u232c  generic map (
    wtime => x"1ADB")
    port map (
      clk => clk,
      data => uart_data,
      go => uart_go,
      busy => uart_busy,
      tx => utx);

  tx <= utx;
  
end behavior;
