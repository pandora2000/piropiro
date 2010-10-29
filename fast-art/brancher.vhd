library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity brancher is
  port (
    isbrc        : in std_logic;
    op           : in std_logic_vector(2 downto 0);
    pc           : in std_logic_vector(13 downto 0);
    data1, data2 : in std_logic_vector(31 downto 0);
    imm          : in std_logic_vector(31 downto 0);
    brc          : out std_logic;
    brc_commit   : out std_logic;
    next_pc      : out std_logic_vector(13 downto 0)); 
end brancher;

architecture structure of brancher is

  signal eq, gt, feq, fgt : std_logic;

begin 

  next_pc <= pc + imm(13 downto 0);
            
  brc <= '1' when isbrc = '1' and
                  ((op = "000" and eq = '1') or
                   (op = "001" and eq = '0') or
                   (op = "010" and gt = '1') or
                   (op = "011" and gt = '0' and eq = '0') or
                   (op = "100" and feq = '1') or
                   (op = "101" and feq = '0') or
                   (op = "110" and fgt = '1') or
                   (op = "111" and fgt = '0' and feq = '0')) else
         '0';

  eq <= '1' when data1 = data2 else '0';
  
  gt <= '1' when (data1(31) = '0' and data2(31) = '1') or 
                 (data1(31) = '0' and 
                  data1(30 downto 0) > data2(30 downto 0)) or 
                 (data1(31) = '1' and data2(31) = '1' and  
                  data1(30 downto 0) < data2(30 downto 0)) else
        '0';

  feq <= '1' when data1 = data2 or
                  (data1(30 downto 0) = 0 and data2(30 downto 0) = 0) else
         '0';

  fgt <= '1' when (data1(31) = '0' and data2(31) = '1' and
                   (data1(30 downto 0) /= 0 or data2(30 downto 0) /= 0)) or 
                  (data1(31) = '0' and 
                   data1(30 downto 0) > data2(30 downto 0)) or 
                  (data1(31) = '1' and data2(31) = '1' and  
                   data1(30 downto 0) < data2(30 downto 0)) else
         '0';
          
  brc_commit <= isbrc;
  
end structure;
