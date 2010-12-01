library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ffpu is
  port (
    clk          : in std_logic;
    op           : in std_logic_vector(2 downto 0);
    data1, data2 : in std_logic_vector(31 downto 0);
    result       : out std_logic_vector(31 downto 0));
end ffpu;

architecture behavior of ffpu is 

  signal op0, op1 : std_logic_vector(2 downto 0);

  component fadd
    port (
      clk          : in std_logic;
      op           : in std_logic_vector(2 downto 0);
      f_in1, f_in2 : in std_logic_vector(31 downto 0);
      f_out        : out std_logic_vector(31 downto 0)); 
  end component;
  signal result_fadd : std_logic_vector(31 downto 0);

  component fmul
    port (
      clk          : in std_logic;
      data1, data2 : in std_logic_vector(31 downto 0);
      result       : out std_logic_vector(31 downto 0));
  end component;
  signal result_fmul : std_logic_vector(31 downto 0);

  component foi
    port (
      clk    : in std_logic;
      data   : in std_logic_vector(31 downto 0);
      result : out std_logic_vector(31 downto 0));
  end component;
  signal result_foi : std_logic_vector(31 downto 0);

  component flr
    port (
      clk    : in std_logic;
      data   : in std_logic_vector(31 downto 0);
      result : out std_logic_vector(31 downto 0));
  end component;
  signal result_flr : std_logic_vector(31 downto 0);
                   
begin 

  fadd1: fadd port map (clk, op, data1, data2, result_fadd);
  fmul1: fmul port map (clk, data1, data2, result_fmul);
  foi1: foi port map (clk, data1, result_foi);
  flr1: flr port map (clk, data1, result_flr);

  op_progress: process (clk)
  begin 
    if rising_edge(clk) then
      op0 <= op;
      op1 <= op0;
    end if;
  end process;

  result <= result_fadd when op1 = "000" or op1 = "001" else 
            result_fmul when op1 = "010" else 
            result_flr  when op1 = "011" else 
            result_foi;

end behavior;
