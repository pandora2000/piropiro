library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity decoder is
  port (
    ist                : in std_logic_vector(31 downto 0);
    unit               : out std_logic_vector(2 downto 0);
    op                 : out std_logic_vector(2 downto 0);  
    src1, src2, src3   : out std_logic_vector(4 downto 0);
    dst                : out std_logic_vector(4 downto 0);
    imm                : out std_logic_vector(15 downto 0);
    rf                 : out std_logic_vector(7 downto 0);
    reg_w              : out std_logic_vector(15 downto 0);
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

--  op <= ist(28 downto 26) when ist(31 downto 30) = "00" or  -- ALU
--                               ist(31 downto 29) = "010" or  -- FFPU
--                               ist(31 downto 30) = "10" else  -- BU
--        "00" & ist(26);

  op <= ist(28 downto 26);

  mem_rw <= '0' when ist(31 downto 29) = "011" and ist(27) = '1' else 
            '1';                        -- readは1, writeは0

  rf(7 downto 6) <= "00" when ist(31 downto 26) = "000000" or  --nop/st
                              ist(31 downto 27) = "00010" or   --out
                              (ist(31 downto 29) = "011" and ist(27) = '1') or
                              ist(31) = '1' else  -- brc/jmp
                    "01" when (ist(31 downto 30) = "00" and
                               ist(29 downto 26) /= "1101") or  --alu/rdf
                              ist(31 downto 27) = "01100" else  --ld
                    "10";

  rf(5 downto 4) <= "00" when ist(31 downto 26) = "000000" or  --nop
                              ist(31 downto 27) = "00110" or   --input
                              ist(31 downto 30) = "11" else    -- jump
                    "01" when (ist(31 downto 30) = "00" and
                               ist(29 downto 26) /= "0101") or  --alu/out
                              ist(31 downto 26) = "010101" or  -- foi
                              ist(31 downto 29) = "011" or      -- ld/st
                              ist(31 downto 28) = "1000" else   --brc
                    "10";

  rf(3 downto 2) <= "00" when ist(31 downto 26) = "000000" or  --nop
                              (ist(31 downto 30) = "00" and  
                               ist(28 downto 27) = "10") or   --input/output
                              ist(31 downto 29) = "001" or  --alui
                              (ist(31 downto 29) = "011" and ist(26) = '1') or
                              ist(31 downto 28) = "0101" or --fpu(1operand)
                              ist(31) = '1' else  --brc/jmp
                    "01" when ist(31 downto 30) = "00" or  --alu
                              ist(31 downto 29) = "011" else  --ldr/str
                    "10";

  rf(1 downto 0) <= "01" when ist(31 downto 27) = "01101" or  -- st
                              ist(31 downto 28) = "1000" else  --brc
                    "10" when ist(31 downto 27) = "01111" or  --fst
                              ist(31 downto 28) = "1001" else  --fbrc
                    "00";

  reg_w <= x"0000" when ist(31 downto 26) = "000000" or   -- nop命令
                        ist(31 downto 27) = "00010" else  -- output
           x"0010" when ist(31 downto 30) = "00" else     -- ALU
           x"2000" when ist(31 downto 27) = "01100" else  -- load命令
           x"8000" when ist(31 downto 27) = "01110" else  -- fload命令
           x"4000" when ist(31 downto 29) = "010" else    -- FFPU命令
           x"0000";

  reg_or_imm <= ist(29) when ist(31 downto 30) = "00" else
                ist(26) when ist(31 downto 29) = "011" else
                '0';
  
  dst <= ist(25 downto 21);
  src1 <= ist(20 downto 16);          
  src2 <= ist(15 downto 11);
  src3 <= ist(25 downto 21);
 
  imm <= ist(15 downto 0);

  isbrc <= '1' when ist(31 downto 30) = "10" else '0';
  isret <= '1' when ist(31 downto 29) = "111" else '0';
  isjump <= '1' when ist(31 downto 29) = "110" else '0';
  iscall <= '1' when ist(31 downto 28) = "1101" else '0';
  
end structure;
