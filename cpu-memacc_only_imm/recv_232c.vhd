library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity recv_232c is
  generic (
    wtime : std_logic_vector (15 downto 0) := x"1ADB");
  port (
    clk   : in std_logic;
    rx    : in std_logic; 
    data  : out std_logic_vector (7 downto 0);
    ready : out std_logic);
end recv_232c;

architecture behavior of recv_232c is

  signal rxdata : std_logic_vector (7 downto 0);
  signal countdown : std_logic_vector (15 downto 0) := x"0000";
  signal state : std_logic_vector (3 downto 0) := x"9";

begin 
  -- 出力をセット
  -- 新たなデータがセットされたら1クロックだけreadyがアサートされる
  output: process (clk)                       
  begin                                 
    if rising_edge(clk) then 
      case state is
        when x"A" =>
          ready <= '1';
          data <= rxdata;
        when others =>
          ready <= '0';
      end case;
    end if;
  end process;

  recieve: process (clk)                -- データ受信
  begin 
    if rising_edge(clk) then
      if countdown = 0 then
        case state is
          when x"B" =>                  -- データ送信終了待ち状態
            state <= state - 1;
          when x"A" =>                  -- 出力データセット状態
            state <= state - 1;
          when x"9" =>                  -- stop bit受信状態
            if rx = '0' then
              state <= state - 1;
            end if;
          when x"8" =>                  -- start bit受信状態
            if rx = '0' then
              state <= state - 1;
              countdown <= wtime + 290;
            end if;
          when others =>                -- データ受信状態
            rxdata <= rx & rxdata(7 downto 1);
            countdown <= wtime;
            if not (state = x"0") then 
              state <= state - 1;
            else
              state <= x"B";
            end if;
        end case;
      else
        countdown <= countdown - 1;
      end if;
    end if;    
  end process;

end behavior;
