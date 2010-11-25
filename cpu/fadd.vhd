library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity fadd is
  port (
    clk          : in std_logic;
    op           : in std_logic_vector(2 downto 0);
    f_in1, f_in2 : in std_logic_vector(31 downto 0);
    f_out        : out std_logic_vector(31 downto 0)); 
end fadd;

architecture behavior of fadd is

  component bshifter_r
    port(input : in bit_vector (50 downto 0);
         nshift : in bit_vector (7 downto 0);
         output : out bit_vector (50 downto 0));
  end component;
  signal input0 : bit_vector (50 downto 0);
  signal n0 : bit_vector (7 downto 0);
  signal output0 : bit_vector (50 downto 0);

  component bshifter_l
    port(input : in bit_vector (27 downto 0);
         nshift : in bit_vector (4 downto 0);
         output : out bit_vector (27 downto 0));
  end component;
  signal input1 : bit_vector (27 downto 0);
  signal n1 : bit_vector (4 downto 0);
  signal output1 : bit_vector (27 downto 0);

  component pencoder
    port (
      input : in std_logic_vector (27 downto 0);
      output : out std_logic_vector (4 downto 0));
  end component;

  signal sign, sticky, round : std_logic;
  signal sign_sub            : std_logic;
  signal cmp0, cmp1, cmp2    : std_logic_vector(1 downto 0);     
  signal f_inl0, f_ins0      : std_logic_vector(31 downto 0);
  signal f_inl1, f_ins1      : std_logic_vector(31 downto 0);
  signal f_inl2, f_ins2      : std_logic_vector(31 downto 0);
  signal exp, exp_dif0, exp_dif1 : std_logic_vector(7 downto 0);
  signal man                 : std_logic_vector(22 downto 0);
  signal man_s, man_l        : std_logic_vector(50 downto 0);
  signal man_ss, man_t0      : std_logic_vector(50 downto 0);
  signal man_t3, man_t2, man_t1 : std_logic_vector(27 downto 0);
  signal nshift1, nshift2    : std_logic_vector(4 downto 0);

begin
  -- f_in1、f_in2の絶対値を比較する。
  cmp0 <= "00" when f_in1(30 downto 0) > f_in2(30 downto 0) else 
          "01" when f_in1(30 downto 0) = f_in2(30 downto 0) else 
          "10";

  sign_sub <= not f_in2(31) when op = "001" else f_in2(31);
  
  -- 大きい方をf_inl に、小さい方を f_ins に代入する。
  f_inl0 <= f_in1 when cmp0(1) = '0' else sign_sub & f_in2(30 downto 0);    
  f_ins0 <= sign_sub & f_in2(30 downto 0) when cmp0(1) = '0' else f_in1;
  
  -- 指数部の差の計算
  exp_dif0 <= f_inl0(30 downto 23) - f_ins0(30 downto 23);

  latch0: process (clk)
  begin 
    if rising_edge(clk) then
      f_inl1 <= f_inl0;
      f_ins1 <= f_ins0;
      exp_dif1 <= exp_dif0;
      cmp1 <= cmp0;
    end if;
  end process;
  
  -- 前シフト処理(レポートに記載した通り)
  man_l <= "01" & f_inl1(22 downto 0) & x"000000" & "00";
  man_ss <= "01" & f_ins1(22 downto 0) & x"000000" & "00";
  input0 <= to_bitvector(man_ss);
  n0 <= to_bitvector(exp_dif1);
  sr : bshifter_r port map (input0, n0, output0);
  man_s <= to_stdlogicvector(output0);

  -- 符号が同じであれば加算、異なれば減算を行う
  man_t0 <= man_l + man_s when f_inl1(31) = f_ins1(31) else
            man_l - man_s;
			  
  -- stickyビット求め、正規化前の仮数部を生成する
  sticky <= '0' when man_t0(23 downto 0) = 0 else '1';
  man_t1 <= man_t0(50 downto 24) & sticky;

  -- 正規化の際にシフトする量を求める
  pe : pencoder port map (man_t1, nshift1);

  latch1: process (clk)
  begin 
    if rising_edge(clk) then
      f_inl2 <= f_inl1;
      f_ins2 <= f_ins1;
      man_t2 <= man_t1;
      cmp2 <= cmp1;
      nshift2 <= nshift1;
    end if;
  end process;

  -- 左シフトする
  input1 <= to_bitvector(man_t2);
  n1 <= to_bitvector(nshift2);
  sl : bshifter_l port map (input1, n1, output1);
  man_t3 <= to_stdlogicvector(output1);

  -- 指数部の計算
  exp <= f_inl2(30 downto 23) + 1 - nshift2;

  -- 丸め処理(レポートに記載した通り)
  round <= man_t3(3) and (man_t3(4) or man_t3(2) or man_t3(1) or man_t3(0));
  man <= man_t3(26 downto 4) + round;

  -- 符号は、絶対値の大きい方の符号となる
  sign <= f_inl2(31);

  -- 最終結果の出力
  f_out <=  f_inl2      when f_ins2(30 downto 0) = 0 else
            f_ins2      when f_inl2(30 downto 0) = 0 else
            x"00000000" when (cmp2 = "01") and (f_inl2(31) /= f_ins2(31)) else
            sign & exp & man;
  
end behavior;
