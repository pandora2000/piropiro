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

begin

  unit <= "000" when ist(31 downto 26) = "000000" else  -- NOP
          "100" when ist(31 downto 27) = "00010" else   -- output命令
          "101" when ist(31 downto 27) = "00110" else   -- input命令 
          "001" when ist(31 downto 30) = "00" else      -- ALU[1]
          "011" when ist(31 downto 26) = "010011" else -- SFPU[6](fdiv)
          "010" when ist(31 downto 29) = "010" else     -- FFPU[3]
          "110" when ist(31 downto 29) = "011" else     -- MAU[3]
          "111" when ist(31 downto 30) = "10" else      -- BU[1]
          "000";

  op <= ist(28 downto 26);

  mem_rw <= '0' when ist(31 downto 29) = "011" and ist(27) = '1' else 
            '1';                        -- readは1, writeは0

  rf(2) <= '1' when ist(31 downto 29) = "010" or  -- FPU
                    ist(31 downto 26) = "001101" or  -- rdf
                    ist(31 downto 28) = "0111" else  -- fld
           '0';

  rf(1) <= '1' when (ist(31 downto 29) = "010" and
                     ist(28 downto 26) /= "101") or  -- FPU
                    ist(31 downto 28) = "1001" or  -- fbrc
                    ist(31 downto 26) = "000101" else  -- ptf
           '0';

  rf(0) <= '1' when ist(31 downto 29) = "010" or  -- FPU
                    ist(31 downto 28) = "1001" or  -- fbrc
                    ist(31 downto 27) = "01111" else  -- fst
           '0';

  reg_w <= x"000" when ist(31 downto 26) = "000000" or   -- nop命令
                       ist(31 downto 27) = "00010" else  -- output
           x"001" when ist(31 downto 30) = "00" else     -- ALU
           x"200" when ist(31 downto 27) = "01100" else  -- load命令
           x"800" when ist(31 downto 27) = "01110" else  -- fload命令
           x"400" when ist(31 downto 29) = "010" else    -- FFPU命令
           x"000";

  reg_or_imm <= ist(29) when ist(31 downto 30) = "00" else '0';
  
  dst <= "00000" when (ist(31 downto 29) = "011" and ist(27) = '1') or
                      ist(31) = '1' else  -- storeとbranch, jamp系はdstなし
         ist(25 downto 21);
  
  src1 <= "00000"           when ist(31 downto 30) = "11" else
          ist(20 downto 16);          

  src2 <= ist(25 downto 21) when (ist(31 downto 29) = "011" and
                                  ist(27) = '1') or            -- store命令
                                  ist(31 downto 30) = "10" else -- branch命令
          ist(15 downto 11) when ist(31 downto 29) = "000" or -- ALU-reg命令
                                 ist(31 downto 29) = "010" else --FPU
          "00000"; 
 
  imm <= ist(15 downto 0);

  isbrc <= '1' when ist(31 downto 30) = "10" else '0';
  isret <= '1' when ist(31 downto 29) = "111" else '0';
  isjump <= '1' when ist(31 downto 29) = "110" else '0';
  iscall <= '1' when ist(31 downto 28) = "1101" else '0';
  
end structure;
