library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

library UNISIM;
use UNISIM.VComponents.all;

entity top is
  port (
    MCLK1                         : in std_logic;
    RS_RX                         : in std_logic;
    RS_TX                         : out std_logic;
    XLBO, XE1, E2A, XE3, XWA, XGA : out std_logic;
    ADVA, ZZA, XZCKE, XFT         : out std_logic;
    ZCLKMA                        : out std_logic_vector(1 downto 0);
    XZBE                          : out std_logic_vector(3 downto 0);
    ZA                            : out std_logic_vector(19 downto 0);
    ZD                            : inout std_logic_vector(31 downto 0);
    ZDP                           : inout std_logic_vector(3 downto 0));
end top;

architecture behavior of top is

  signal iclk, clk      : std_logic;
  signal ist_set        : std_logic := '1';
  signal sram_set       : std_logic := '1';
  signal ist_set_addr   : std_logic_vector(13 downto 0) := (others => '1');
  signal sram_set_addr  : std_logic_vector(19 downto 0) := (others => '1');
  signal sram_set_data  : std_logic_vector(31 downto 0);

  component IF_stage  
    port (
      ist_set         : in std_logic;
      clk, missprd    : in std_logic;
      next_pc, brc_pc : in std_logic_vector(13 downto 0); 
      pc              : out std_logic_vector(13 downto 0); 
      pc_out          : out std_logic_vector(13 downto 0));
  end component;
  signal missprd         : std_logic;
  signal next_pc, brc_pc : std_logic_vector(13 downto 0);
  signal pc              : std_logic_vector(13 downto 0);
  signal pc_IF           : std_logic_vector(13 downto 0);

  component ist_mem 
    port (
      clk, w : in std_logic;     
      pc     : in std_logic_vector(13 downto 0);
      addr_w : in std_logic_vector(13 downto 0);
      data   : in std_logic_vector(35 downto 0);
      ist    : out std_logic_vector(35 downto 0));
  end component;
  signal w_ist : std_logic;     
  signal ist   : std_logic_vector(35 downto 0);

  component ID_stage 
    port (
      clk                 : in std_logic;
      ist_set             : in std_logic;
      missprd, brc_commit : in std_logic;
      sfpu_finish         : in std_logic;
      rd_finish           : in std_logic;
      pt_busy             : in std_logic;
      pc                  : in std_logic_vector(13 downto 0);
      ist                 : in std_logic_vector(35 downto 0);
      pc_out              : out std_logic_vector(13 downto 0);
      next_pc             : out std_logic_vector(13 downto 0);
      unit_out            : out std_logic_vector(2 downto 0);
      op_out              : out std_logic_vector(2 downto 0);
      rf_out              : out std_logic_vector(1 downto 0);
      src1_out            : out std_logic_vector(4 downto 0);
      src2_out            : out std_logic_vector(4 downto 0);
      imm_out             : out std_logic_vector(15 downto 0);
      reg_or_imm_out      : out std_logic;
      isbrc_out           : out std_logic;
      reg_w_set           : out std_logic_vector(3 downto 0);
      mem_rw_set          : out std_logic;
      dst_alu, dst_ld     : out std_logic_vector(4 downto 0);
      dst_ffpu, dst_sfpu  : out std_logic_vector(4 downto 0);
      dst_rd              : out std_logic_vector(4 downto 0));
  end component;
  signal brc_commit              : std_logic;
  signal sfpu_finish             : std_logic;
  signal pt_busy                 : std_logic;
  signal rd_finish               : std_logic;
  signal unit_ID, op_ID          : std_logic_vector(2 downto 0);
  signal pc_ID                   : std_logic_vector(13 downto 0);
  signal rf                      : std_logic_vector(1 downto 0);
  signal src1, src2              : std_logic_vector(4 downto 0);
  signal imm_ID                  : std_logic_vector(15 downto 0);
  signal reg_or_imm_ID           : std_logic;
  signal isbrc                   : std_logic;
  signal reg_w_set               : std_logic_vector(3 downto 0);
  signal mem_rw_set              : std_logic;
  signal dst_alu                 : std_logic_vector(4 downto 0);
  signal dst_ld, dst_sfpu        : std_logic_vector(4 downto 0);
  signal dst_ffpu                : std_logic_vector(4 downto 0);
  signal dst_rd                  : std_logic_vector(4 downto 0);

  component REG_stage 
    port (
      clk                 : in std_logic;
      missprd             : in std_logic;
      unit                : in std_logic_vector(2 downto 0);
      reg_or_imm          : in std_logic;
      rf                  : in std_logic_vector(1 downto 0);
      pc                  : in std_logic_vector(13 downto 0);
      op                  : in std_logic_vector(2 downto 0);
      reg_w_set           : in std_logic_vector(3 downto 0);
      src1, src2          : in std_logic_vector(4 downto 0);
      imm                 : in std_logic_vector(15 downto 0);
      data_alu            : in std_logic_vector(31 downto 0);
      data_ffpu           : in std_logic_vector(31 downto 0);
      data_ld , data_sfpu : in std_logic_vector(31 downto 0);
      data_rd             : in std_logic_vector(31 downto 0);
      dst_alu             : in std_logic_vector(4 downto 0);
      dst_ffpu            : in std_logic_vector(4 downto 0);
      dst_ld, dst_sfpu    : in std_logic_vector(4 downto 0);
      dst_rd              : in std_logic_vector(4 downto 0);
      sfpu_finish         : in std_logic;
      rd_port             : in std_logic_vector(1 downto 0);
      unit_out            : out std_logic_vector(2 downto 0);
      pc_out              : out std_logic_vector(13 downto 0);
      op_out              : out std_logic_vector(2 downto 0);
      data1               : out std_logic_vector(31 downto 0);
      data2               : out std_logic_vector(31 downto 0);
      imm_out             : out std_logic_vector(31 downto 0);
      reg_or_imm_out      : out std_logic);
  end component;
  signal data_alu, data_ffpu : std_logic_vector(31 downto 0);
  signal data_ld, data_sfpu  : std_logic_vector(31 downto 0);
  signal data_rd             : std_logic_vector(31 downto 0);
  signal unit_REG, op_REG    : std_logic_vector(2 downto 0);
  signal pc_REG              : std_logic_vector(13 downto 0);
  signal data1, data2        : std_logic_vector(31 downto 0);
  signal imm_REG             : std_logic_vector(31 downto 0);
  signal reg_or_imm_REG      : std_logic;
  signal rd_port             : std_logic_vector(1 downto 0);
  
  component alu
    port (
      src1, src2 : in std_logic_vector (31 downto 0);
      op         : in std_logic_vector (1 downto 0);
      result     : out std_logic_vector (31 downto 0));
  end component;

  component ffpu
    port (
      clk          : in std_logic;
      op           : in std_logic_vector(2 downto 0);
      data1, data2 : in std_logic_vector(31 downto 0);
      result       : out std_logic_vector(31 downto 0));
  end component;

  component sfpu
    port (
      clk          : in std_logic;
      unit         : in std_logic_vector(2 downto 0);
      op           : in std_logic;
      data1, data2 : in std_logic_vector(31 downto 0);  -- data1/data2
      result       : out std_logic_vector(31 downto 0);
      finish       : out std_logic);
  end component;

  component brancher
    port (
      isbrc        : in std_logic;
      op           : in std_logic_vector(2 downto 0);
      pc           : in std_logic_vector(13 downto 0);
      data1, data2 : in std_logic_vector(31 downto 0);
      imm          : in std_logic_vector(31 downto 0);
      brc          : out std_logic;
      brc_commit   : out std_logic;
      next_pc      : out std_logic_vector(13 downto 0)); 
  end component;

  component addr_cal
    port (
      data : in std_logic_vector(31 downto 0);
      imm  : in std_logic_vector(31 downto 0);
      addr : out std_logic_vector(19 downto 0));
  end component;
  signal addr     : std_logic_vector(19 downto 0);
  
  component sram_ctrl
    port (
      clk, w   : in std_logic;
      dq       : inout std_logic_vector(31 downto 0);
      dqp      : inout std_logic_vector(3 downto 0);
      data_in  : in std_logic_vector(31 downto 0); 
      prty_in  : in std_logic_vector(3 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      prty_out : out std_logic_vector(3 downto 0));            
  end component;
  signal prty_in, prty_out : std_logic_vector(3 downto 0);
  signal sram_addr : std_logic_vector(19 downto 0);
  signal sram_xw : std_logic;
  signal sram_data : std_logic_vector(31 downto 0);

  component recv_buffer
    port (
      clk       : in std_logic;
      ist_set   : in std_logic;
      ready     : in std_logic;
      unit      : in std_logic_vector(2 downto 0);
      r_or_f    : in std_logic;
      data_in   : in std_logic_vector(31 downto 0);
      rd_finish : out std_logic;
      rd_port   : out std_logic_vector(1 downto 0);
      data_out  : out std_logic_vector(31 downto 0));
  end component;

  component iof 
    port (
      clk      : in std_logic;
      r_or_f   : in std_logic;
      unit     : in std_logic_vector(2 downto 0);
      data     : in std_logic_vector(31 downto 0);
      unit_out : out std_logic_vector(2 downto 0);
      result   : out std_logic_vector(7 downto 0));
  end component;
  signal data_iof : std_logic_vector(7 downto 0);
  signal unit_iof : std_logic_vector(2 downto 0);

  component send_buffer
    port (
      clk      : in std_logic;
      unit     : in std_logic_vector(2 downto 0);
      send_cmt : in std_logic;
      data_in  : in std_logic_vector(7 downto 0);
      busy     : out std_logic;
      send_pmt : out std_logic;
      data_out : out std_logic_vector(7 downto 0));
  end component;
  signal send_cmt, send_pmt : std_logic;
  signal data_sendbuf       : std_logic_vector(7 downto 0);

  component u232c is
    generic (
      wtime: std_logic_vector(15 downto 0) := x"1ADB");
    port (
      clk  : in  std_logic;
      data : in  std_logic_vector(7 downto 0);
      go   : in  std_logic;
      busy : out std_logic;
      tx   : out std_logic);
  end component;
  signal data_send : std_logic_vector(7 downto 0) := x"00";
  signal go        : std_logic := '0';
  signal busy      : std_logic;
  signal tx        : std_logic;

  component recv_5byte
    port (
      clk   : in std_logic;
      mode  : in std_logic;
      rx    : in std_logic;
      data  : out std_logic_vector (39 downto 0);
      ready : out std_logic);
  end component;
  signal rx, ready : std_logic;
  signal mode : std_logic := '0';       
  signal data_recv : std_logic_vector(39 downto 0);
  
begin

  ib : IBUFG port map (
    i => MCLK1,
    o => iclk);

  bg : BUFG port map (
    i => iclk,
    o => clk);
    
  IF_stage1: IF_stage port map (
    ist_set, clk, missprd, next_pc, brc_pc, pc, pc_IF);

  ist_mem1: ist_mem port map (
    clk, w_ist, pc, ist_set_addr, data_recv(35 downto 0), ist);

  ID_stage1: ID_stage port map (
    clk, ist_set, missprd, brc_commit, sfpu_finish, rd_finish, pt_busy,
    pc_IF, ist, pc_ID, next_pc, unit_ID, op_ID, rf, src1, src2, 
    imm_ID, reg_or_imm_ID, isbrc, reg_w_set, mem_rw_set, dst_alu,
    dst_ld, dst_ffpu, dst_sfpu, dst_rd); 

  REG_stage1: REG_stage port map (
    clk, missprd, unit_ID, reg_or_imm_ID, rf, pc_ID, op_ID, reg_w_set,
    src1, src2, imm_ID, data_alu, data_ffpu, data_ld, data_sfpu, data_rd,
    dst_alu, dst_ffpu, dst_ld, dst_sfpu, dst_rd, sfpu_finish, rd_port,
    unit_REG, pc_REG, op_REG, data1, data2, imm_REG, reg_or_imm_REG);

  alu1: alu port map (data1, data2, op_REG(1 downto 0), data_alu);

  ffpu1: ffpu port map (clk, op_REG, data1, data2, data_ffpu);

  sfpu1: sfpu port map (
    clk, unit_REG, op_REG(0), data1, data2, data_sfpu, sfpu_finish);

  brancher1: brancher port map (
    isbrc, op_REG, pc_REG, data2, data1, imm_REG, missprd, brc_commit, brc_pc);

  addr_cal1: addr_cal port map (data1, imm_REG, addr);

  sram_ctrl1: sram_ctrl port map (
    clk, sram_xw, ZD, ZDP, sram_data, prty_in, data_ld, prty_out);
  prty_in <= x"0";                  -- parityの入力は0で固定
  ZCLKMA(0) <= clk; ZCLKMA(1) <= clk; XWA <= sram_xw; ZA <= sram_addr;
  XLBO <= '1'; XE1 <= '0'; E2A <= '1'; XE3 <= '0'; XZBE <= x"0";
  XGA <= '0'; XZCKE <= '0'; ADVA <= '0'; ZZA <= '0'; XFT <= '1';

  recv_buffer1: recv_buffer port map (
    clk, ist_set, ready, unit_REG, op_REG(2), data_recv(31 downto 0),
    rd_finish, rd_port, data_rd);

  iof1: iof port map (clk, op_REG(2), unit_REG, data1, unit_iof, data_iof);

  send_buffer1: send_buffer port map (
    clk, unit_iof, send_cmt, data_iof, pt_busy, send_pmt, data_sendbuf); 

  send_byte1 : u232c generic map (wtime => x"0243")
                     port map (clk, data_send, go, busy, tx);
  RS_TX <= tx;

  recv_5byte1 : recv_5byte port map (clk, mode, rx, data_recv, ready);
  rx <= RS_RX;

  sram_addr <= sram_set_addr  when sram_set = '1' else
               addr;

  sram_xw <= '0'         when sram_set = '1' else
             mem_rw_set;

  sram_data <= sram_set_data when sram_set = '1' else 
               data2;

  send_data: process(clk)
  begin 
    if rising_edge(clk) then
      if send_pmt = '1' and busy = '0' and go = '0' then
        data_send <= data_sendbuf;
        go <= '1';
        send_cmt <= '1';
      else
        go <= '0';
        send_cmt <= '0';
      end if;
    end if;
  end process;

  set_sram: process(clk)
  begin 
    if rising_edge(clk) then
      if sram_set = '1' then 
        if ready = '1' then
          if data_recv = x"FFFFFFFFFF" then  -- この命令でSRAMセット終了
            sram_set <= '0';
            sram_set_addr <= (others => '1');
          else
            sram_set_addr <= sram_set_addr + 1;
            sram_set_data <= data_recv(31 downto 0);
          end if;
        end if;
      end if;
    end if;
  end process;

  set_ist_mem: process(clk)
  begin 
    if rising_edge(clk) then
      if ist_set = '1' and sram_set = '0' then
        if ready = '1' then 
          if data_recv = x"FFFFFFFFFF" then  -- この命令で命令メモリセット終了
            ist_set <= '0';
            mode <= '1';
            ist_set_addr <= (others => '1');
          else
            w_ist <= '1';
            ist_set_addr <= ist_set_addr + 1;
          end if;
        else
          w_ist <= '0';
        end if;
      elsif pc = "11111111111111" then
        ist_set <= '1';
        mode <= '0';
      end if;
    end if;
  end process;

end behavior;
