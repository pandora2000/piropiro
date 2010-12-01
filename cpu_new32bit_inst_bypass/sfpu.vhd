library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sfpu is
  port (
    clk          : in std_logic;
    unit         : in std_logic_vector(2 downto 0);
    op           : in std_logic;
    data1, data2 : in std_logic_vector(31 downto 0);  -- data1/data2
    result       : out std_logic_vector(31 downto 0);
    finish       : out std_logic);
end sfpu;

architecture behavior of sfpu is 

  signal op0 : std_logic;

  component fdiv
    port (
      clk          : in std_logic;
      start        : in std_logic;
      data1, data2 : in std_logic_vector(31 downto 0);  -- data1/data2
      result       : out std_logic_vector(31 downto 0);
      finish       : out std_logic);
  end component;
  signal start_fdiv  : std_logic;
  signal finish_fdiv : std_logic;
  signal result_fdiv : std_logic_vector(31 downto 0);

  component fsqrt
    port (
      clk    : in std_logic;
      start  : in std_logic;
      data   : in std_logic_vector(31 downto 0);
      result : out std_logic_vector(31 downto 0);
      finish : out std_logic);
  end component;
  signal start_fsqrt  : std_logic;
  signal finish_fsqrt : std_logic;
  signal result_fsqrt : std_logic_vector(31 downto 0);
                   
begin 

  fdiv1: fdiv port map (
    clk, start_fdiv, data1, data2, result_fdiv, finish_fdiv);
  
  fsqrt1: fsqrt port map (
    clk, start_fsqrt, data1, result_fsqrt, finish_fsqrt);

  start_fdiv <= '1' when unit = "011" and op = '0' else '0';
  start_fsqrt <= '1' when unit = "011" and op = '1' else '0';
 
  op_progress: process (clk)
  begin 
    if rising_edge(clk) then 
      if unit = "011" then
        op0 <= op;
      end if;
    end if;
  end process;

  result <= result_fdiv when op0 = '0' else  
            result_fsqrt;

  finish <= finish_fdiv or finish_fsqrt;

end behavior;
