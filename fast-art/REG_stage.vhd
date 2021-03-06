library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity REG_stage is
  port (
    clk                 : in std_logic;
    unit                : in std_logic_vector(2 downto 0);
    reg_or_imm          : in std_logic;
    rf                  : in std_logic_vector(7 downto 0);
    pc                  : in std_logic_vector(13 downto 0);
    op                  : in std_logic_vector(2 downto 0);
    reg_w_set           : in std_logic_vector(3 downto 0);
    src1, src2, src3    : in std_logic_vector(4 downto 0);
    imm                 : in std_logic_vector(15 downto 0);
    data_alu            : in std_logic_vector(31 downto 0);
    data_ffpu           : in std_logic_vector(31 downto 0);
    data_ld, data_sfpu  : in std_logic_vector(31 downto 0);
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
    data3               : out std_logic_vector(31 downto 0);
    imm_out             : out std_logic_vector(31 downto 0);
    reg_or_imm_out      : out std_logic);
end REG_stage;

architecture structure of REG_stage is
  
  component reg_file
    port (
      clk              : in std_logic;
      w1, w2, w3, w4   : in std_logic;  
      addr_r1, addr_r2 : in std_logic_vector(4 downto 0);
      addr_r3          : in std_logic_vector(4 downto 0);
      addr_w1, addr_w2 : in std_logic_vector(4 downto 0);
      addr_w3, addr_w4 : in std_logic_vector(4 downto 0);
      data_w1, data_w2 : in std_logic_vector(31 downto 0);
      data_w3, data_w4 : in std_logic_vector(31 downto 0);
      data_r1, data_r2 : out std_logic_vector(31 downto 0);
      data_r3          : out std_logic_vector(31 downto 0));
  end component;
  signal r_data_r1, r_data_r2 : std_logic_vector(31 downto 0);
  signal r_data_r3            : std_logic_vector(31 downto 0);
  signal f_data_r1, f_data_r2 : std_logic_vector(31 downto 0);
  signal f_data_r3            : std_logic_vector(31 downto 0);

  signal imm_expand : std_logic_vector(31 downto 0);
  
begin 

  reg_file1: reg_file port map (
    clk, reg_w_set(0), reg_w_set(1), '0', rd_port(0),
    src1, src2, src3, dst_alu, dst_ld, dst_ld, dst_rd,
    data_alu, data_ld, data_ld, data_rd,
    r_data_r1, r_data_r2, r_data_r3);

  freg_file1: reg_file port map (
    clk, reg_w_set(2), reg_w_set(3), sfpu_finish, rd_port(1),
    src1, src2, src3, dst_ffpu, dst_ld, dst_sfpu, dst_rd,
    data_ffpu, data_ld, data_sfpu, data_rd,  
    f_data_r1, f_data_r2, f_data_r3); 
 
  imm_expand <= x"0000" & imm when imm(15) = '0' else
                x"FFFF" & imm;

  to_EX: process (clk)
  begin 
    if rising_edge(clk) then
      if src1 = "00000" then 
        data1 <= x"00000000";
      elsif rf(4) = '1' then
        data1 <= r_data_r1;
      else
        data1 <= f_data_r1;
      end if;
      if reg_or_imm = '1' and unit = "001" then
        data2 <= imm_expand;
      elsif src2 = "00000" then 
        data2 <= x"00000000";
      elsif rf(2) = '1' then
        data2 <= r_data_r2;
      else
        data2 <= f_data_r2;
      end if;
      if src3 = "00000" then 
        data3 <= x"00000000";
      elsif rf(0) = '1' then
        data3 <= r_data_r3;
      else
        data3 <= f_data_r3;
      end if;
      unit_out <= unit;
      pc_out <= pc;
      imm_out <= imm_expand;
      reg_or_imm_out <= reg_or_imm;
      op_out <= op;
    end if;
  end process;

end structure;
