library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ID_stage is
  port (
    clk                 : in std_logic;
    ist_set             : in std_logic;
    missprd, brc_commit : in std_logic;
    sfpu_finish         : in std_logic;
    rd_finish           : in std_logic;
    pt_busy             : in std_logic;
    pc                  : in std_logic_vector(13 downto 0);
    ist                 : in std_logic_vector(31 downto 0);
    pc_out              : out std_logic_vector(13 downto 0);
    next_pc             : out std_logic_vector(13 downto 0);
    unit_out            : out std_logic_vector(2 downto 0);
    op_out              : out std_logic_vector(2 downto 0);
    rf_out              : out std_logic_vector(7 downto 0);
    src1_out            : out std_logic_vector(4 downto 0);
    src2_out            : out std_logic_vector(4 downto 0);
    src3_out            : out std_logic_vector(4 downto 0);
    imm_out             : out std_logic_vector(15 downto 0);
    reg_or_imm_out      : out std_logic;
    isbrc_out           : out std_logic;
    reg_w_set           : out std_logic_vector(3 downto 0);
    mem_rw_set          : out std_logic;
    dst_alu, dst_ld     : out std_logic_vector(4 downto 0);
    dst_ffpu, dst_sfpu  : out std_logic_vector(4 downto 0);
    dst_rd              : out std_logic_vector(4 downto 0));
end ID_stage;

architecture behavior of ID_stage is

  -- destinationを格納するシフトレジスタ
  signal ffpu_reg : std_logic_vector(19 downto 0) := (others => '0');
  signal sfpu_reg : std_logic_vector(4 downto 0) := (others => '0');
  signal alu_reg  : std_logic_vector(9 downto 0) := (others => '0');
  signal ld_reg   : std_logic_vector(27 downto 0) := (others => '0');
  signal rd_reg   : std_logic_vector(6 downto 0) := (others => '0');
  
  -- レジスタ書き込みポート、メモリ読み書き、分岐命令を保持するシフトレジスタ
  signal reg_w_reg   : std_logic_vector(15 downto 0) := (others => '0');
  signal mem_rw_reg  : std_logic_vector(1 downto 0) := (others => '1');
  signal brc_reg     : std_logic_vector(1 downto 0) := (others => '0');

  signal raw       : std_logic;
  signal waw       : std_logic;
  signal nop       : std_logic;
  signal phtjump   : std_logic_vector(1 downto 0) := "00";
  signal sfpu_busy : std_logic := '0';
  signal sfpu_go   : std_logic := '0';
  signal rd_busy   : std_logic := '0';
  signal rd_go     : std_logic := '0';
                                                                  
  component decoder 
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
  end component;
  signal unit             : std_logic_vector(2 downto 0);
  signal src1, src2, src3 : std_logic_vector(4 downto 0);
  signal dst              : std_logic_vector(4 downto 0);
  signal rf               : std_logic_vector(7 downto 0);
  signal op               : std_logic_vector(2 downto 0);
  signal imm              : std_logic_vector(15 downto 0);
  signal reg_or_imm       : std_logic;
  signal reg_w            : std_logic_vector(15 downto 0);
  signal mem_rw           : std_logic;
  signal isbrc            : std_logic;
  signal isret            : std_logic;
  signal isjump           : std_logic;
  signal iscall           : std_logic;

  component ret_stack
    port (
      clk        : in std_logic;
      push, pop  : in std_logic;
      data_w     : in std_logic_vector(13 downto 0);
      data_r     : out std_logic_vector(13 downto 0));
  end component;
  signal brc_start, push, pop : std_logic;
  signal ret_pc_w, ret_pc_r   : std_logic_vector(13 downto 0);

begin 

  decoder1: decoder port map (
    ist, unit, op, src1, src2, src3, dst, imm, rf, reg_w, mem_rw,
    reg_or_imm, isbrc, isret, isjump, iscall);

  ret_stack1: ret_stack port map (clk, push, pop, ret_pc_w, ret_pc_r);

  next_pc <= pc               when ist_set = '1' else
             ist(13 downto 0) when phtjump = 0 and isjump = '1' else 
             ret_pc_r         when phtjump = 0 and isret = '1' else
             pc               when isjump = '1' or isret = '1' or
                                   raw = '1' or waw = '1' or
                                   (unit = "011" and sfpu_busy = '1') or 
                                   (unit = "101" and rd_busy = '1') or
                                   (unit = "100" and pt_busy = '1') else
             pc + 1;

  pht_jp: process(clk)
  begin
    if rising_edge(clk) then
      if missprd = '1' then
        phtjump <= "00";
      elsif brc_start = '1' and brc_commit = '1' then
        phtjump <= phtjump;
      elsif brc_start = '1' then
        phtjump <= phtjump + 1;
      elsif brc_commit = '1' then
        phtjump <= phtjump - 1;
      end if;
    end if;
  end process;

  ret_pc_w <= pc + 1; 

  push <= '1' when phtjump = 0 and iscall = '1' else '0';
  
  pop <= '1' when phtjump = 0 and isret = '1' else '0';

  brc_start <= '1' when isbrc = '1' and nop = '0' else '0';
             
  nop <= '1' when raw = '1' or waw = '1' or ist(31 downto 30) = "11" or
                  (unit = "011" and sfpu_busy = '1') or 
                  (unit = "101" and rd_busy = '1') or
                  (unit = "100" and pt_busy = '1') else
         '0';

  -- istと先行のWAW
  waw <= '1' when (rf(7 downto 6) /= 0 and
                   (rf(7 downto 6) & dst = ld_reg(27 downto 21) or
                    rf(7 downto 6) & dst = ld_reg(20 downto 14) or
                    rf(7 downto 6) & dst = ld_reg(13 downto 7) or
                    rf(7 downto 6) & dst = ld_reg(6 downto 0) or 
                    rf(7 downto 6) & dst = rd_reg)) or
                    (rf(7 downto 6) = "01" and 
                     (dst = alu_reg(9 downto 5) or
                      dst = alu_reg(4 downto 0))) or
                    (rf(7 downto 6) = "10" and
                     (dst = sfpu_reg or
                      dst = ffpu_reg(19 downto 15) or
                      dst = ffpu_reg(14 downto 10) or
                      dst = ffpu_reg(9 downto 5) or
                      dst = ffpu_reg(4 downto 0))) else
          '0';

  -- istと先行のRAW
  raw <= '1' when (src1 /= 0 and
                   (rf(5 downto 4) & src1 = ld_reg(27 downto 21) or
                    rf(5 downto 4) & src1 = ld_reg(20 downto 14) or
                    rf(5 downto 4) & src1 = ld_reg(13 downto 7) or
                    rf(5 downto 4) & src1 = ld_reg(6 downto 0) or 
                    rf(5 downto 4) & src1 = rd_reg or
                    (rf(5 downto 4) = "01" and
                     (src1 = alu_reg(9 downto 5) or
                      src1 = alu_reg(4 downto 0))) or
                    (rf(5 downto 4) = "10" and
                      (src1 = sfpu_reg or
                       src1 = ffpu_reg(19 downto 15) or
                       src1 = ffpu_reg(14 downto 10) or
                       src1 = ffpu_reg(9 downto 5) or
                       src1 = ffpu_reg(4 downto 0))))) or
                    (src2 /= 0 and 
                     (rf(3 downto 2) & src2 = ld_reg(27 downto 21) or
                      rf(3 downto 2) & src2 = ld_reg(20 downto 14) or
                      rf(3 downto 2) & src2 = ld_reg(13 downto 7) or
                      rf(3 downto 2) & src2 = ld_reg(6 downto 0) or 
                      rf(3 downto 2) & src2 = rd_reg or
                      (rf(3 downto 2) = "01" and 
                       (src2 = alu_reg(9 downto 5) or
                        src2 = alu_reg(4 downto 0))) or
                      (rf(3 downto 2) = "10" and 
                       (src2 = sfpu_reg or
                        src2 = ffpu_reg(19 downto 15) or
                        src2 = ffpu_reg(14 downto 10) or
                        src2 = ffpu_reg(9 downto 5) or
                        src2 = ffpu_reg(4 downto 0))))) or
                     (src3 /= 0 and 
                      (rf(1 downto 0) & src3 = ld_reg(27 downto 21) or
                       rf(1 downto 0) & src3 = ld_reg(20 downto 14) or
                       rf(1 downto 0) & src3 = ld_reg(13 downto 7) or
                       rf(1 downto 0) & src3 = ld_reg(6 downto 0) or 
                       rf(1 downto 0) & src3 = rd_reg or
                       (rf(1 downto 0) = "01" and 
                        (src3 = alu_reg(9 downto 5) or
                         src3 = alu_reg(4 downto 0))) or
                       (rf(1 downto 0) = "10" and 
                        (src3 = sfpu_reg or
                         src3 = ffpu_reg(19 downto 15) or
                         src3 = ffpu_reg(14 downto 10) or
                         src3 = ffpu_reg(9 downto 5) or
                         src3 = ffpu_reg(4 downto 0))))) else
          '0';

  shift_reg_w_reg: process (clk)
  begin 
    if rising_edge(clk) then 
      if missprd = '1' then                 -- missprd
        reg_w_reg <= x"00" & reg_w_reg(11 downto 4);
      elsif nop = '1' then             -- stall
        reg_w_reg <= x"0" & reg_w_reg(15 downto 4);
      else 
        reg_w_reg <= reg_w or (x"0" & reg_w_reg(15 downto 4));
      end if;
    end if;
  end process;

  shift_dst_reg: process (clk)
  begin 
    if rising_edge(clk) then
      if missprd = '1' then
        alu_reg <= "0000000000";
      elsif unit = "001" and nop = '0' then
        alu_reg <= dst & alu_reg(9 downto 5);
      else
        alu_reg <= "00000" & alu_reg(9 downto 5);
      end if;
      if missprd = '1' then
        ffpu_reg <= "0000000000" & ffpu_reg(14 downto 5);
      elsif unit = "010" and nop = '0' then
        ffpu_reg <= dst & ffpu_reg(19 downto 5);
      else
        ffpu_reg <= "00000" & ffpu_reg(19 downto 5);
      end if;
      if missprd = '1' then
        ld_reg <= "00000000000000" & ld_reg(20 downto 7);
      elsif unit = "110" and nop = '0' then
        ld_reg <= rf(7 downto 6) & dst & ld_reg(27 downto 7);
      else
        ld_reg <= "0000000" & ld_reg(27 downto 7);
      end if;
      if sfpu_finish = '1' or (sfpu_go = '1' and missprd = '1') then
        sfpu_reg <= "00000";
      elsif unit = "011" and nop = '0' then
        sfpu_reg <= dst;
      end if;
      if rd_finish = '1' or (rd_go = '1' and missprd = '1') then
        rd_reg <= "0000000";
      elsif unit = "101" and nop = '0' then
        rd_reg <= rf(7 downto 6) & dst;
      end if;
    end if;
  end process;

  shift_mem_rw_reg: process (clk)
  begin 
    if rising_edge(clk) then 
      if missprd = '1' then
        mem_rw_reg <= "11";
      elsif unit = "110" and nop = '0' then
        mem_rw_reg <= mem_rw & mem_rw_reg(1);
      else
        mem_rw_reg <= '1' & mem_rw_reg(1);
      end if;
    end if;
  end process;

  shift_brc_reg: process (clk)
  begin 
    if rising_edge(clk) then
      if missprd = '1' then
        brc_reg <= "00";
      elsif isbrc = '1' and nop = '0' then
        brc_reg <= '1' & brc_reg(1);
      else
        brc_reg <= '0' & brc_reg(1);  
      end if;
    end if;
  end process;

  set_sfpu_busy: process (clk)
  begin 
    if rising_edge(clk) then
      if sfpu_finish = '1' or (sfpu_go = '1' and missprd = '1') then
        sfpu_busy <= '0';
      elsif unit = "011" and nop = '0' then
        sfpu_busy <= '1';
      end if;               
    end if;
  end process;

  set_sfpu_go: process (clk)
  begin 
    if rising_edge(clk) then
      if unit = "011" and nop = '0' then 
        sfpu_go <= '1';
      else
        sfpu_go <= '0';
      end if;
    end if;
  end process;

  set_rd_busy: process (clk)
  begin 
    if rising_edge(clk) then 
      if rd_finish = '1' or (rd_go = '1' and missprd = '1') then
        rd_busy <= '0';
      elsif unit = "101" and nop = '0' then
        rd_busy <= '1';
      end if;
    end if;
  end process;

  set_rd_go: process (clk)
  begin 
    if rising_edge(clk) then 
      if unit = "101" and nop = '0' then
        rd_go <= '1';
      else
        rd_go <= '0';
      end if;
    end if;
  end process;
  
  reg_w_set <= reg_w_reg(3 downto 0);        -- register write enable
  mem_rw_set <= mem_rw_reg(0);               -- memory write enable
  isbrc_out <= brc_reg(0);

  dst_alu <= alu_reg(4 downto 0);   -- alu port
  dst_ld <= ld_reg(4 downto 0);     -- load port
  dst_ffpu <= ffpu_reg(4 downto 0); -- ffpu port
  dst_sfpu <= sfpu_reg;
  dst_rd <= rd_reg(4 downto 0);

  to_REG: process (clk)
  begin 
    if rising_edge(clk) then
      if nop = '0' then
        unit_out <= unit;
      else
        unit_out <= "000";
      end if;
      src1_out <= src1;
      src2_out <= src2;
      src3_out <= src3;
      pc_out <= pc;
      op_out <= op;
      rf_out <= rf;
      reg_or_imm_out <= reg_or_imm;
      imm_out <= imm;
    end if;
  end process;

end behavior;
