library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity decoder is
  port (
    ist                : in std_logic_vector(31 downto 0);
    unit               : out std_logic_vector(2 downto 0);
    op                 : out std_logic_vector(2 downto 0);  
    src1, src2         : out std_logic_vector(4 downto 0);
    dst                : out std_logic_vector(4 downto 0);
    imm                : out std_logic_vector(15 downto 0);
    rf                 : out std_logic_vector(2 downto 0);
    reg_w              : out std_logic_vector(11 downto 0);
    mem_rw, reg_or_imm : out std_logic;
    isbrc, isret       : out std_logic;
    isjump, iscall     : out std_logic);
end decoder;

architecture structure of decoder is

  signal isbrc0 : std_logic;

begin

  op <= ist(28 downto 26);

  unit <= ist(31 downto 29);
  -- 000 : NOP
  -- 001 : ALU
  -- 010 : FFPU
  -- 011 : SFPU
  -- 100 : OUTPUT
  -- 101 : INPUT
  -- 110 : MEM ACCESS
  -- 111 : BRANCH

  isret <= '1' when ist(31 downto 29) = 0 and ist(26) = '1' else '0';
  
  iscall <= '1' when ist(31 downto 29) = 0 and ist(27) = '1' else '0';

  isjump <= '1' when ist(31 downto 29) = 0 and ist(28) = '1' else '0';

  isbrc0 <= '1' when ist(31 downto 29) = "111" else '0';
  isbrc <= isbrc0;

  reg_or_imm <= ist(28) when ist(31 downto 29) = "001" else '0';

  mem_rw <= ist(28) when ist(31 downto 29) = "110" else '1';

  rf(2) <= '1' when ist(31 downto 30) = "01" or      -- FFPU/SFPU
                    ist(31 downto 28) = "1011" or    -- rdf
                    ist(31 downto 27) = "11011" else -- fld
           '0';

  rf(1) <= '1' when (ist(31 downto 30) = "01" and ist(28) = '0') or -- FFPU/SFPU
                    ist(31 downto 28) = "1111" or   -- fbrc
                    ist(31 downto 28) = "1001" else -- ptf
           '0';

  rf(0) <= '1' when ist(31 downto 30) = "01" or       -- FFPU/SFPU
                    ist(31 downto 28) = "1111" or     -- fbrc
                    ist(31 downto 27) = "11001" else  -- fst
           '0';

  reg_w <= x"000" when ist(30 downto 29) = "00" else     -- NOP/OUTPUT
           x"001" when ist(31 downto 29) = "001" else    -- ALU
           x"200" when ist(31 downto 27) = "11010" else  -- ldi
           x"800" when ist(31 downto 27) = "11011" else  -- fldi
           x"400" when ist(31 downto 29) = "010" else    -- FFPU
           x"000";
  
  dst <= "00000" when ist(31 downto 28) = "1100" or isbrc0 = '1' or 
                      (ist(31 downto 29) = 0 and ist(28 downto 26) /= 0) else
                      -- stとbrc, jump系はdstなし
         ist(25 downto 21);
  
  src1 <= "00000" when ist(31 downto 29) = 0 and ist(28 downto 26) /= 0 else
          ist(20 downto 16);          

  src2 <= ist(25 downto 21) when ist(31 downto 28) = "1100" or
                                 isbrc0 = '1' else  -- st/brc
          ist(15 downto 11) when ist(31 downto 28) = "0010" or -- ALU
                                 ist(31 downto 30) = "01" else -- FFPU/SFPU
          "00000"; 
 
  imm <= ist(15 downto 0);
  
end structure;
