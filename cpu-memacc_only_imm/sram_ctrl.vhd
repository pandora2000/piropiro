library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sram_ctrl is
  port (
    clk, w   : in std_logic;
    dq       : inout std_logic_vector(31 downto 0);
    dqp      : inout std_logic_vector(3 downto 0);
    data_in  : in std_logic_vector(31 downto 0); 
    prty_in  : in std_logic_vector(3 downto 0);
    data_out : out std_logic_vector(31 downto 0);
    prty_out : out std_logic_vector(3 downto 0));
end sram_ctrl;

architecture behavior of sram_ctrl is
  
  signal w0 : std_logic := '1';
  signal data_in0 : std_logic_vector(31 downto 0); 
  signal prty_in0 : std_logic_vector(3 downto 0);
  
begin 

  sram_progress: process (clk)
  begin
    if rising_edge(clk) then
      w0 <= w;                   -- 先のクロックまでwとデータを伝える
      data_in0 <= data_in;              
      prty_in0 <= prty_in;
      if w0 = '0' then
        dq <= data_in0;          -- データ、パリティ書き込み
        dqp <= prty_in0;
      else                       -- read処理
        dq <= (others=>'Z');
        dqp <= (others=>'Z');
      end if;
    end if;
  end process;

  data_out <= dq;
  prty_out <= dqp;
    
end behavior;
