library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity u232c is
  generic (wtime: std_logic_vector(15 downto 0) := x"1ADB");
  Port ( clk  : in  STD_LOGIC;
         data : in  STD_LOGIC_VECTOR (7 downto 0);
         go   : in  STD_LOGIC;
         busy : out STD_LOGIC;
         tx   : out STD_LOGIC);
end u232c;

architecture blackbox of u232c is
  signal countdown: std_logic_vector(15 downto 0) := (others=>'0');
  signal sendbuf: std_logic_vector(8 downto 0) := (others=>'1');
  signal state: std_logic_vector(3 downto 0) := "1011";
begin
  statemachine: process(clk)
  begin
    if rising_edge(clk) then
    -- stateは、1ADB回のクロックエッジの後に、1減少する
      case state is
        -- sendbufに新たなASCIIコードが入るのは16ステートに1回である
        when "1011"=>
          if go='1' then
            -- dataの右に0を結合し、9ビットの信号となる。
            -- 0はRS-232C規格におけるスタートビットであり、送信データの先頭に
            -- 必ずおく必要がある。
            sendbuf<=data&"0";          
            state<=state-1;
            countdown<=wtime;
          end if;
        -- 16ステートのうち15ステートは次の処理をする。 
        when others=>
          -- クロックエッジ1ADB回の間は、同じ送信ビット(tx)を送信するようにする。
          -- これは、RS-232Cのハードウェアにおけるポーリング間隔が、FPGAの
          -- クロックサイクルよりも長いためである。
          if countdown=0 then
            -- 右シフトし、左側を1で埋める
            -- tx、つまり送信ビットを更新することになる。
            -- ASCIIコードの各ビットを送信した後は7ステートの間1を送信する。
            -- 1はRS-232C規格におけるストップビットであり、1回の通信が終了したことを
            -- 意味する。
            sendbuf<="1"&sendbuf(8 downto 1);  
            countdown<=wtime;
            state<=state-1;
          else
            countdown<=countdown-1;
          end if;
      end case;
    end if;
  end process;
  -- txが送信ビットとなる。
  tx<=sendbuf(0);
  -- busy=0でクロックエッジのとき、top.vhdにおいて送信文字のASCIIコードが更新される。
  busy<= '0' when state="1011" else '1';
end blackbox;

