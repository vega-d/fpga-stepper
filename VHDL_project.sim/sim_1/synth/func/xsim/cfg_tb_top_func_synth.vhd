-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Mon Apr 15 11:53:28 2024
-- Host        : carrie running 64-bit unknown
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/vega/projects/vutbr/VHDL_project/VHDL_project/VHDL_project.sim/sim_1/synth/func/xsim/cfg_tb_top_func_synth.vhd
-- Design      : top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a50ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clock_enable is
  port (
    CLK : out STD_LOGIC;
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC;
    clear_IBUF : in STD_LOGIC
  );
end clock_enable;

architecture STRUCTURE of clock_enable is
  signal pulse_i_1_n_0 : STD_LOGIC;
  signal \sig_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \sig_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \sig_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \sig_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \sig_count[0]_i_7_n_0\ : STD_LOGIC;
  signal sig_count_reg : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \sig_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sig_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \sig_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \sig_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \sig_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \sig_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \sig_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \sig_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \sig_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \sig_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \sig_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \sig_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \sig_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \sig_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \sig_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \sig_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \sig_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \sig_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \sig_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \sig_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \sig_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \sig_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \sig_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \sig_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \sig_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \sig_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \sig_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sig_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sig_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sig_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sig_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \sig_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \sig_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \sig_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_sig_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sig_count_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \sig_count_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_count_reg[8]_i_1\ : label is 11;
begin
pulse_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \sig_count[0]_i_3_n_0\,
      I1 => \sig_count[0]_i_4_n_0\,
      I2 => \sig_count[0]_i_5_n_0\,
      I3 => \sig_count[0]_i_6_n_0\,
      I4 => clear_IBUF,
      O => pulse_i_1_n_0
    );
pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => pulse_i_1_n_0,
      Q => CLK,
      R => '0'
    );
\sig_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEAAA"
    )
        port map (
      I0 => clear_IBUF,
      I1 => \sig_count[0]_i_3_n_0\,
      I2 => \sig_count[0]_i_4_n_0\,
      I3 => \sig_count[0]_i_5_n_0\,
      I4 => \sig_count[0]_i_6_n_0\,
      O => \sig_count[0]_i_1_n_0\
    );
\sig_count[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => sig_count_reg(0),
      I1 => sig_count_reg(1),
      I2 => sig_count_reg(2),
      I3 => sig_count_reg(4),
      I4 => sig_count_reg(3),
      O => \sig_count[0]_i_3_n_0\
    );
\sig_count[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sig_count_reg(8),
      I1 => sig_count_reg(5),
      I2 => sig_count_reg(11),
      I3 => sig_count_reg(10),
      O => \sig_count[0]_i_4_n_0\
    );
\sig_count[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sig_count_reg(15),
      I1 => sig_count_reg(14),
      I2 => sig_count_reg(13),
      I3 => sig_count_reg(12),
      O => \sig_count[0]_i_5_n_0\
    );
\sig_count[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBF"
    )
        port map (
      I0 => sig_count_reg(6),
      I1 => sig_count_reg(17),
      I2 => sig_count_reg(16),
      I3 => sig_count_reg(9),
      I4 => sig_count_reg(7),
      O => \sig_count[0]_i_6_n_0\
    );
\sig_count[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_count_reg(0),
      O => \sig_count[0]_i_7_n_0\
    );
\sig_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \sig_count_reg[0]_i_2_n_7\,
      Q => sig_count_reg(0),
      R => \sig_count[0]_i_1_n_0\
    );
\sig_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sig_count_reg[0]_i_2_n_0\,
      CO(2) => \sig_count_reg[0]_i_2_n_1\,
      CO(1) => \sig_count_reg[0]_i_2_n_2\,
      CO(0) => \sig_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \sig_count_reg[0]_i_2_n_4\,
      O(2) => \sig_count_reg[0]_i_2_n_5\,
      O(1) => \sig_count_reg[0]_i_2_n_6\,
      O(0) => \sig_count_reg[0]_i_2_n_7\,
      S(3 downto 1) => sig_count_reg(3 downto 1),
      S(0) => \sig_count[0]_i_7_n_0\
    );
\sig_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \sig_count_reg[8]_i_1_n_5\,
      Q => sig_count_reg(10),
      R => \sig_count[0]_i_1_n_0\
    );
\sig_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \sig_count_reg[8]_i_1_n_4\,
      Q => sig_count_reg(11),
      R => \sig_count[0]_i_1_n_0\
    );
\sig_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \sig_count_reg[12]_i_1_n_7\,
      Q => sig_count_reg(12),
      R => \sig_count[0]_i_1_n_0\
    );
\sig_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_count_reg[8]_i_1_n_0\,
      CO(3) => \sig_count_reg[12]_i_1_n_0\,
      CO(2) => \sig_count_reg[12]_i_1_n_1\,
      CO(1) => \sig_count_reg[12]_i_1_n_2\,
      CO(0) => \sig_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_count_reg[12]_i_1_n_4\,
      O(2) => \sig_count_reg[12]_i_1_n_5\,
      O(1) => \sig_count_reg[12]_i_1_n_6\,
      O(0) => \sig_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => sig_count_reg(15 downto 12)
    );
\sig_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \sig_count_reg[12]_i_1_n_6\,
      Q => sig_count_reg(13),
      R => \sig_count[0]_i_1_n_0\
    );
\sig_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \sig_count_reg[12]_i_1_n_5\,
      Q => sig_count_reg(14),
      R => \sig_count[0]_i_1_n_0\
    );
\sig_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \sig_count_reg[12]_i_1_n_4\,
      Q => sig_count_reg(15),
      R => \sig_count[0]_i_1_n_0\
    );
\sig_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \sig_count_reg[16]_i_1_n_7\,
      Q => sig_count_reg(16),
      R => \sig_count[0]_i_1_n_0\
    );
\sig_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_count_reg[12]_i_1_n_0\,
      CO(3 downto 1) => \NLW_sig_count_reg[16]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \sig_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_sig_count_reg[16]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \sig_count_reg[16]_i_1_n_6\,
      O(0) => \sig_count_reg[16]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => sig_count_reg(17 downto 16)
    );
\sig_count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \sig_count_reg[16]_i_1_n_6\,
      Q => sig_count_reg(17),
      R => \sig_count[0]_i_1_n_0\
    );
\sig_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \sig_count_reg[0]_i_2_n_6\,
      Q => sig_count_reg(1),
      R => \sig_count[0]_i_1_n_0\
    );
\sig_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \sig_count_reg[0]_i_2_n_5\,
      Q => sig_count_reg(2),
      R => \sig_count[0]_i_1_n_0\
    );
\sig_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \sig_count_reg[0]_i_2_n_4\,
      Q => sig_count_reg(3),
      R => \sig_count[0]_i_1_n_0\
    );
\sig_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \sig_count_reg[4]_i_1_n_7\,
      Q => sig_count_reg(4),
      R => \sig_count[0]_i_1_n_0\
    );
\sig_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_count_reg[0]_i_2_n_0\,
      CO(3) => \sig_count_reg[4]_i_1_n_0\,
      CO(2) => \sig_count_reg[4]_i_1_n_1\,
      CO(1) => \sig_count_reg[4]_i_1_n_2\,
      CO(0) => \sig_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_count_reg[4]_i_1_n_4\,
      O(2) => \sig_count_reg[4]_i_1_n_5\,
      O(1) => \sig_count_reg[4]_i_1_n_6\,
      O(0) => \sig_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => sig_count_reg(7 downto 4)
    );
\sig_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \sig_count_reg[4]_i_1_n_6\,
      Q => sig_count_reg(5),
      R => \sig_count[0]_i_1_n_0\
    );
\sig_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \sig_count_reg[4]_i_1_n_5\,
      Q => sig_count_reg(6),
      R => \sig_count[0]_i_1_n_0\
    );
\sig_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \sig_count_reg[4]_i_1_n_4\,
      Q => sig_count_reg(7),
      R => \sig_count[0]_i_1_n_0\
    );
\sig_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \sig_count_reg[8]_i_1_n_7\,
      Q => sig_count_reg(8),
      R => \sig_count[0]_i_1_n_0\
    );
\sig_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_count_reg[4]_i_1_n_0\,
      CO(3) => \sig_count_reg[8]_i_1_n_0\,
      CO(2) => \sig_count_reg[8]_i_1_n_1\,
      CO(1) => \sig_count_reg[8]_i_1_n_2\,
      CO(0) => \sig_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_count_reg[8]_i_1_n_4\,
      O(2) => \sig_count_reg[8]_i_1_n_5\,
      O(1) => \sig_count_reg[8]_i_1_n_6\,
      O(0) => \sig_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => sig_count_reg(11 downto 8)
    );
\sig_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \sig_count_reg[8]_i_1_n_6\,
      Q => sig_count_reg(9),
      R => \sig_count[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity counter is
  port (
    selectseg_OBUF : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    seg_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \selectseg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    switchnum_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \selectseg[1]\ : in STD_LOGIC;
    clear_IBUF : in STD_LOGIC;
    \seg_OBUF[6]_inst_i_3_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \selectseg[5]\ : in STD_LOGIC;
    \selectseg[7]\ : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
end counter;

architecture STRUCTURE of counter is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal int_sig : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal register1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \seg_OBUF[6]_inst_i_10_n_0\ : STD_LOGIC;
  signal \seg_OBUF[6]_inst_i_11_n_0\ : STD_LOGIC;
  signal \seg_OBUF[6]_inst_i_12_n_0\ : STD_LOGIC;
  signal \seg_OBUF[6]_inst_i_13_n_0\ : STD_LOGIC;
  signal \seg_OBUF[6]_inst_i_6_n_0\ : STD_LOGIC;
  signal \seg_OBUF[6]_inst_i_7_n_0\ : STD_LOGIC;
  signal \seg_OBUF[6]_inst_i_8_n_0\ : STD_LOGIC;
  signal \seg_OBUF[6]_inst_i_9_n_0\ : STD_LOGIC;
  signal \selectseg_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \selectseg_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \selectseg_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \selectseg_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \selectseg_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \selectseg_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \selectseg_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \int_sig[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \int_sig[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \seg_OBUF[0]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg_OBUF[1]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg_OBUF[2]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg_OBUF[3]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \seg_OBUF[4]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg_OBUF[5]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \selectseg_OBUF[0]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \selectseg_OBUF[1]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \selectseg_OBUF[2]_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \selectseg_OBUF[3]_inst_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \selectseg_OBUF[3]_inst_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \selectseg_OBUF[4]_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \selectseg_OBUF[5]_inst_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \selectseg_OBUF[6]_inst_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \selectseg_OBUF[6]_inst_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \selectseg_OBUF[7]_inst_i_1\ : label is "soft_lutpair5";
begin
  Q(0) <= \^q\(0);
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_sig(0),
      Q => \^q\(0),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_sig(1),
      Q => \count_reg_n_0_[1]\,
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_sig(2),
      Q => \count_reg_n_0_[2]\,
      R => '0'
    );
\int_sig[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => int_sig(0),
      O => plusOp(0)
    );
\int_sig[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => int_sig(0),
      I1 => int_sig(1),
      O => plusOp(1)
    );
\int_sig[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => int_sig(0),
      I1 => int_sig(1),
      I2 => int_sig(2),
      O => plusOp(2)
    );
\int_sig_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => plusOp(0),
      Q => int_sig(0),
      R => clear_IBUF
    );
\int_sig_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => plusOp(1),
      Q => int_sig(1),
      R => clear_IBUF
    );
\int_sig_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => plusOp(2),
      Q => int_sig(2),
      R => clear_IBUF
    );
\seg_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAABAEAB"
    )
        port map (
      I0 => clear_IBUF,
      I1 => register1(3),
      I2 => register1(1),
      I3 => register1(2),
      I4 => register1(0),
      O => seg_OBUF(0)
    );
\seg_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFABEBAA"
    )
        port map (
      I0 => clear_IBUF,
      I1 => register1(2),
      I2 => register1(3),
      I3 => register1(0),
      I4 => register1(1),
      O => seg_OBUF(1)
    );
\seg_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAABFBA"
    )
        port map (
      I0 => clear_IBUF,
      I1 => register1(3),
      I2 => register1(2),
      I3 => register1(0),
      I4 => register1(1),
      O => seg_OBUF(2)
    );
\seg_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAABAEBA"
    )
        port map (
      I0 => clear_IBUF,
      I1 => register1(3),
      I2 => register1(2),
      I3 => register1(1),
      I4 => register1(0),
      O => seg_OBUF(3)
    );
\seg_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FABAABAA"
    )
        port map (
      I0 => clear_IBUF,
      I1 => register1(0),
      I2 => register1(3),
      I3 => register1(1),
      I4 => register1(2),
      O => seg_OBUF(4)
    );
\seg_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBEAFEAA"
    )
        port map (
      I0 => clear_IBUF,
      I1 => register1(1),
      I2 => register1(3),
      I3 => register1(2),
      I4 => register1(0),
      O => seg_OBUF(5)
    );
\seg_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAEBABAA"
    )
        port map (
      I0 => clear_IBUF,
      I1 => register1(1),
      I2 => register1(3),
      I3 => register1(2),
      I4 => register1(0),
      O => seg_OBUF(6)
    );
\seg_OBUF[6]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_OBUF[6]_inst_i_3_0\(14),
      I1 => \seg_OBUF[6]_inst_i_3_0\(10),
      I2 => \count_reg_n_0_[1]\,
      I3 => \seg_OBUF[6]_inst_i_3_0\(6),
      I4 => \^q\(0),
      I5 => \seg_OBUF[6]_inst_i_3_0\(2),
      O => \seg_OBUF[6]_inst_i_10_n_0\
    );
\seg_OBUF[6]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_OBUF[6]_inst_i_3_0\(30),
      I1 => \seg_OBUF[6]_inst_i_3_0\(26),
      I2 => \count_reg_n_0_[1]\,
      I3 => \seg_OBUF[6]_inst_i_3_0\(22),
      I4 => \^q\(0),
      I5 => \seg_OBUF[6]_inst_i_3_0\(18),
      O => \seg_OBUF[6]_inst_i_11_n_0\
    );
\seg_OBUF[6]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_OBUF[6]_inst_i_3_0\(12),
      I1 => \seg_OBUF[6]_inst_i_3_0\(8),
      I2 => \count_reg_n_0_[1]\,
      I3 => \seg_OBUF[6]_inst_i_3_0\(4),
      I4 => \^q\(0),
      I5 => \seg_OBUF[6]_inst_i_3_0\(0),
      O => \seg_OBUF[6]_inst_i_12_n_0\
    );
\seg_OBUF[6]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_OBUF[6]_inst_i_3_0\(28),
      I1 => \seg_OBUF[6]_inst_i_3_0\(24),
      I2 => \count_reg_n_0_[1]\,
      I3 => \seg_OBUF[6]_inst_i_3_0\(20),
      I4 => \^q\(0),
      I5 => \seg_OBUF[6]_inst_i_3_0\(16),
      O => \seg_OBUF[6]_inst_i_13_n_0\
    );
\seg_OBUF[6]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg_OBUF[6]_inst_i_6_n_0\,
      I1 => \seg_OBUF[6]_inst_i_7_n_0\,
      O => register1(1),
      S => \count_reg_n_0_[2]\
    );
\seg_OBUF[6]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg_OBUF[6]_inst_i_8_n_0\,
      I1 => \seg_OBUF[6]_inst_i_9_n_0\,
      O => register1(3),
      S => \count_reg_n_0_[2]\
    );
\seg_OBUF[6]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg_OBUF[6]_inst_i_10_n_0\,
      I1 => \seg_OBUF[6]_inst_i_11_n_0\,
      O => register1(2),
      S => \count_reg_n_0_[2]\
    );
\seg_OBUF[6]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg_OBUF[6]_inst_i_12_n_0\,
      I1 => \seg_OBUF[6]_inst_i_13_n_0\,
      O => register1(0),
      S => \count_reg_n_0_[2]\
    );
\seg_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_OBUF[6]_inst_i_3_0\(13),
      I1 => \seg_OBUF[6]_inst_i_3_0\(9),
      I2 => \count_reg_n_0_[1]\,
      I3 => \seg_OBUF[6]_inst_i_3_0\(5),
      I4 => \^q\(0),
      I5 => \seg_OBUF[6]_inst_i_3_0\(1),
      O => \seg_OBUF[6]_inst_i_6_n_0\
    );
\seg_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_OBUF[6]_inst_i_3_0\(29),
      I1 => \seg_OBUF[6]_inst_i_3_0\(25),
      I2 => \count_reg_n_0_[1]\,
      I3 => \seg_OBUF[6]_inst_i_3_0\(21),
      I4 => \^q\(0),
      I5 => \seg_OBUF[6]_inst_i_3_0\(17),
      O => \seg_OBUF[6]_inst_i_7_n_0\
    );
\seg_OBUF[6]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_OBUF[6]_inst_i_3_0\(15),
      I1 => \seg_OBUF[6]_inst_i_3_0\(11),
      I2 => \count_reg_n_0_[1]\,
      I3 => \seg_OBUF[6]_inst_i_3_0\(7),
      I4 => \^q\(0),
      I5 => \seg_OBUF[6]_inst_i_3_0\(3),
      O => \seg_OBUF[6]_inst_i_8_n_0\
    );
\seg_OBUF[6]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_OBUF[6]_inst_i_3_0\(31),
      I1 => \seg_OBUF[6]_inst_i_3_0\(27),
      I2 => \count_reg_n_0_[1]\,
      I3 => \seg_OBUF[6]_inst_i_3_0\(23),
      I4 => \^q\(0),
      I5 => \seg_OBUF[6]_inst_i_3_0\(19),
      O => \seg_OBUF[6]_inst_i_9_n_0\
    );
\selectseg_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \selectseg_OBUF[0]_inst_i_2_n_0\,
      I2 => \count_reg_n_0_[1]\,
      O => selectseg_OBUF(0)
    );
\selectseg_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAB"
    )
        port map (
      I0 => \^q\(0),
      I1 => \selectseg[3]\(0),
      I2 => switchnum_IBUF(2),
      I3 => switchnum_IBUF(3),
      I4 => switchnum_IBUF(1),
      I5 => switchnum_IBUF(0),
      O => \selectseg_OBUF[0]_inst_i_2_n_0\
    );
\selectseg_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \selectseg[1]\,
      I2 => \count_reg_n_0_[1]\,
      O => selectseg_OBUF(1)
    );
\selectseg_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \selectseg_OBUF[2]_inst_i_2_n_0\,
      O => selectseg_OBUF(2)
    );
\selectseg_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAABAAAA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \selectseg[3]\(0),
      I2 => switchnum_IBUF(2),
      I3 => switchnum_IBUF(3),
      I4 => switchnum_IBUF(1),
      I5 => switchnum_IBUF(0),
      O => \selectseg_OBUF[2]_inst_i_2_n_0\
    );
\selectseg_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBBFFFFFFFF"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \selectseg[3]\(0),
      I3 => \selectseg_OBUF[3]_inst_i_2_n_0\,
      I4 => \selectseg_OBUF[3]_inst_i_3_n_0\,
      I5 => \^q\(0),
      O => selectseg_OBUF(3)
    );
\selectseg_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => switchnum_IBUF(3),
      I1 => switchnum_IBUF(2),
      O => \selectseg_OBUF[3]_inst_i_2_n_0\
    );
\selectseg_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => switchnum_IBUF(0),
      I1 => switchnum_IBUF(1),
      O => \selectseg_OBUF[3]_inst_i_3_n_0\
    );
\selectseg_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \selectseg_OBUF[4]_inst_i_2_n_0\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[2]\,
      O => selectseg_OBUF(4)
    );
\selectseg_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAABAAAA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \selectseg[3]\(0),
      I2 => switchnum_IBUF(3),
      I3 => switchnum_IBUF(1),
      I4 => switchnum_IBUF(2),
      I5 => switchnum_IBUF(0),
      O => \selectseg_OBUF[4]_inst_i_2_n_0\
    );
\selectseg_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \selectseg[5]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[2]\,
      O => selectseg_OBUF(5)
    );
\selectseg_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDFDDFFFFFFFF"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \selectseg[3]\(0),
      I3 => \selectseg_OBUF[6]_inst_i_2_n_0\,
      I4 => \selectseg_OBUF[6]_inst_i_3_n_0\,
      I5 => \count_reg_n_0_[2]\,
      O => selectseg_OBUF(6)
    );
\selectseg_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => switchnum_IBUF(0),
      I1 => switchnum_IBUF(3),
      O => \selectseg_OBUF[6]_inst_i_2_n_0\
    );
\selectseg_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => switchnum_IBUF(1),
      I1 => switchnum_IBUF(2),
      O => \selectseg_OBUF[6]_inst_i_3_n_0\
    );
\selectseg_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \selectseg[7]\,
      I2 => \count_reg_n_0_[2]\,
      O => selectseg_OBUF(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \counter__parameterized1\ is
  port (
    \count_reg[8]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[8]_1\ : out STD_LOGIC;
    \count_reg[8]_2\ : out STD_LOGIC;
    clear_IBUF : in STD_LOGIC;
    pulse : in STD_LOGIC;
    switchnum_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \selectseg_OBUF[7]_inst_i_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \counter__parameterized1\ : entity is "counter";
end \counter__parameterized1\;

architecture STRUCTURE of \counter__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \int_sig[0]_i_2_n_0\ : STD_LOGIC;
  signal int_sig_reg : STD_LOGIC_VECTOR ( 8 downto 4 );
  signal \int_sig_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_sig_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \int_sig_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \int_sig_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \int_sig_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \int_sig_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \int_sig_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \int_sig_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \int_sig_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \int_sig_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \int_sig_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \int_sig_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \int_sig_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \int_sig_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \int_sig_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \int_sig_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \int_sig_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \int_sig_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_sig_reg_n_0_[1]\ : STD_LOGIC;
  signal \int_sig_reg_n_0_[2]\ : STD_LOGIC;
  signal \int_sig_reg_n_0_[3]\ : STD_LOGIC;
  signal \int_sig_reg_n_0_[5]\ : STD_LOGIC;
  signal \int_sig_reg_n_0_[6]\ : STD_LOGIC;
  signal \int_sig_reg_n_0_[7]\ : STD_LOGIC;
  signal \NLW_int_sig_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_int_sig_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pulse,
      CE => '1',
      D => int_sig_reg(4),
      Q => \^q\(0),
      R => '0'
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pulse,
      CE => '1',
      D => int_sig_reg(8),
      Q => \^q\(1),
      R => '0'
    );
\int_sig[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_sig_reg_n_0_[0]\,
      O => \int_sig[0]_i_2_n_0\
    );
\int_sig_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pulse,
      CE => '1',
      D => \int_sig_reg[0]_i_1_n_7\,
      Q => \int_sig_reg_n_0_[0]\,
      R => clear_IBUF
    );
\int_sig_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \int_sig_reg[0]_i_1_n_0\,
      CO(2) => \int_sig_reg[0]_i_1_n_1\,
      CO(1) => \int_sig_reg[0]_i_1_n_2\,
      CO(0) => \int_sig_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \int_sig_reg[0]_i_1_n_4\,
      O(2) => \int_sig_reg[0]_i_1_n_5\,
      O(1) => \int_sig_reg[0]_i_1_n_6\,
      O(0) => \int_sig_reg[0]_i_1_n_7\,
      S(3) => \int_sig_reg_n_0_[3]\,
      S(2) => \int_sig_reg_n_0_[2]\,
      S(1) => \int_sig_reg_n_0_[1]\,
      S(0) => \int_sig[0]_i_2_n_0\
    );
\int_sig_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pulse,
      CE => '1',
      D => \int_sig_reg[0]_i_1_n_6\,
      Q => \int_sig_reg_n_0_[1]\,
      R => clear_IBUF
    );
\int_sig_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pulse,
      CE => '1',
      D => \int_sig_reg[0]_i_1_n_5\,
      Q => \int_sig_reg_n_0_[2]\,
      R => clear_IBUF
    );
\int_sig_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pulse,
      CE => '1',
      D => \int_sig_reg[0]_i_1_n_4\,
      Q => \int_sig_reg_n_0_[3]\,
      R => clear_IBUF
    );
\int_sig_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pulse,
      CE => '1',
      D => \int_sig_reg[4]_i_1_n_7\,
      Q => int_sig_reg(4),
      R => clear_IBUF
    );
\int_sig_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_sig_reg[0]_i_1_n_0\,
      CO(3) => \int_sig_reg[4]_i_1_n_0\,
      CO(2) => \int_sig_reg[4]_i_1_n_1\,
      CO(1) => \int_sig_reg[4]_i_1_n_2\,
      CO(0) => \int_sig_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \int_sig_reg[4]_i_1_n_4\,
      O(2) => \int_sig_reg[4]_i_1_n_5\,
      O(1) => \int_sig_reg[4]_i_1_n_6\,
      O(0) => \int_sig_reg[4]_i_1_n_7\,
      S(3) => \int_sig_reg_n_0_[7]\,
      S(2) => \int_sig_reg_n_0_[6]\,
      S(1) => \int_sig_reg_n_0_[5]\,
      S(0) => int_sig_reg(4)
    );
\int_sig_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pulse,
      CE => '1',
      D => \int_sig_reg[4]_i_1_n_6\,
      Q => \int_sig_reg_n_0_[5]\,
      R => clear_IBUF
    );
\int_sig_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pulse,
      CE => '1',
      D => \int_sig_reg[4]_i_1_n_5\,
      Q => \int_sig_reg_n_0_[6]\,
      R => clear_IBUF
    );
\int_sig_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pulse,
      CE => '1',
      D => \int_sig_reg[4]_i_1_n_4\,
      Q => \int_sig_reg_n_0_[7]\,
      R => clear_IBUF
    );
\int_sig_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pulse,
      CE => '1',
      D => \int_sig_reg[8]_i_1_n_7\,
      Q => int_sig_reg(8),
      R => clear_IBUF
    );
\int_sig_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_sig_reg[4]_i_1_n_0\,
      CO(3 downto 0) => \NLW_int_sig_reg[8]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_int_sig_reg[8]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \int_sig_reg[8]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => int_sig_reg(8)
    );
\selectseg_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000100FFFFFFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => switchnum_IBUF(2),
      I2 => switchnum_IBUF(3),
      I3 => switchnum_IBUF(0),
      I4 => switchnum_IBUF(1),
      I5 => \selectseg_OBUF[7]_inst_i_1\(0),
      O => \count_reg[8]_0\
    );
\selectseg_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000000FFFFFFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => switchnum_IBUF(3),
      I2 => switchnum_IBUF(1),
      I3 => switchnum_IBUF(2),
      I4 => switchnum_IBUF(0),
      I5 => \selectseg_OBUF[7]_inst_i_1\(0),
      O => \count_reg[8]_1\
    );
\selectseg_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10000000FFFFFFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => switchnum_IBUF(3),
      I2 => switchnum_IBUF(2),
      I3 => switchnum_IBUF(1),
      I4 => switchnum_IBUF(0),
      I5 => \selectseg_OBUF[7]_inst_i_1\(0),
      O => \count_reg[8]_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \counter__parameterized3\ is
  port (
    internal_clear0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    internal_clear00_out : out STD_LOGIC;
    reg1_motor2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    m2_step_OBUF : out STD_LOGIC;
    clear_IBUF : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    add_IBUF : in STD_LOGIC;
    m2_step : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \counter__parameterized3\ : entity is "counter";
end \counter__parameterized3\;

architecture STRUCTURE of \counter__parameterized3\ is
  signal count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \int_sig[7]_i_2__0_n_0\ : STD_LOGIC;
  signal int_sig_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m2_step_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal m2_step_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal m2_step_OBUF_inst_i_4_n_0 : STD_LOGIC;
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dir_reg_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_sig[1]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_sig[2]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_sig[3]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_sig[4]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_sig[6]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_sig[7]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \internal_clear_reg_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \internal_clear_reg_i_2__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \reg1_motor2_reg[10]_i_2\ : label is "soft_lutpair15";
begin
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_sig_reg(0),
      Q => count(0),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_sig_reg(1),
      Q => count(1),
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_sig_reg(2),
      Q => count(2),
      R => '0'
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_sig_reg(3),
      Q => count(3),
      R => '0'
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_sig_reg(4),
      Q => count(4),
      R => '0'
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_sig_reg(5),
      Q => count(5),
      R => '0'
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_sig_reg(6),
      Q => count(6),
      R => '0'
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_sig_reg(7),
      Q => count(7),
      R => '0'
    );
\dir_reg_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55150000"
    )
        port map (
      I0 => clear_IBUF,
      I1 => m2_step_OBUF_inst_i_2_n_0,
      I2 => m2_step_OBUF_inst_i_3_n_0,
      I3 => m2_step_OBUF_inst_i_4_n_0,
      I4 => Q(8),
      O => reg1_motor2(0)
    );
\int_sig[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => int_sig_reg(0),
      O => \plusOp__1\(0)
    );
\int_sig[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => int_sig_reg(0),
      I1 => int_sig_reg(1),
      O => \plusOp__1\(1)
    );
\int_sig[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => int_sig_reg(0),
      I1 => int_sig_reg(1),
      I2 => int_sig_reg(2),
      O => \plusOp__1\(2)
    );
\int_sig[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => int_sig_reg(1),
      I1 => int_sig_reg(0),
      I2 => int_sig_reg(2),
      I3 => int_sig_reg(3),
      O => \plusOp__1\(3)
    );
\int_sig[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => int_sig_reg(2),
      I1 => int_sig_reg(0),
      I2 => int_sig_reg(1),
      I3 => int_sig_reg(3),
      I4 => int_sig_reg(4),
      O => \plusOp__1\(4)
    );
\int_sig[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => int_sig_reg(3),
      I1 => int_sig_reg(1),
      I2 => int_sig_reg(0),
      I3 => int_sig_reg(2),
      I4 => int_sig_reg(4),
      I5 => int_sig_reg(5),
      O => \plusOp__1\(5)
    );
\int_sig[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_sig[7]_i_2__0_n_0\,
      I1 => int_sig_reg(6),
      O => \plusOp__1\(6)
    );
\int_sig[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_sig[7]_i_2__0_n_0\,
      I1 => int_sig_reg(6),
      I2 => int_sig_reg(7),
      O => \plusOp__1\(7)
    );
\int_sig[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => int_sig_reg(5),
      I1 => int_sig_reg(3),
      I2 => int_sig_reg(1),
      I3 => int_sig_reg(0),
      I4 => int_sig_reg(2),
      I5 => int_sig_reg(4),
      O => \int_sig[7]_i_2__0_n_0\
    );
\int_sig_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(8),
      D => \plusOp__1\(0),
      Q => int_sig_reg(0),
      R => SR(0)
    );
\int_sig_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(8),
      D => \plusOp__1\(1),
      Q => int_sig_reg(1),
      R => SR(0)
    );
\int_sig_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(8),
      D => \plusOp__1\(2),
      Q => int_sig_reg(2),
      R => SR(0)
    );
\int_sig_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(8),
      D => \plusOp__1\(3),
      Q => int_sig_reg(3),
      R => SR(0)
    );
\int_sig_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(8),
      D => \plusOp__1\(4),
      Q => int_sig_reg(4),
      R => SR(0)
    );
\int_sig_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(8),
      D => \plusOp__1\(5),
      Q => int_sig_reg(5),
      R => SR(0)
    );
\int_sig_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(8),
      D => \plusOp__1\(6),
      Q => int_sig_reg(6),
      R => SR(0)
    );
\int_sig_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(8),
      D => \plusOp__1\(7),
      Q => int_sig_reg(7),
      R => SR(0)
    );
\internal_clear_reg_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAEA"
    )
        port map (
      I0 => clear_IBUF,
      I1 => m2_step_OBUF_inst_i_2_n_0,
      I2 => m2_step_OBUF_inst_i_3_n_0,
      I3 => m2_step_OBUF_inst_i_4_n_0,
      O => internal_clear0
    );
\internal_clear_reg_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAFFFF"
    )
        port map (
      I0 => clear_IBUF,
      I1 => m2_step_OBUF_inst_i_2_n_0,
      I2 => m2_step_OBUF_inst_i_3_n_0,
      I3 => m2_step_OBUF_inst_i_4_n_0,
      I4 => Q(8),
      O => internal_clear00_out
    );
m2_step_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5515000000000000"
    )
        port map (
      I0 => clear_IBUF,
      I1 => m2_step_OBUF_inst_i_2_n_0,
      I2 => m2_step_OBUF_inst_i_3_n_0,
      I3 => m2_step_OBUF_inst_i_4_n_0,
      I4 => m2_step(0),
      I5 => Q(8),
      O => m2_step_OBUF
    );
m2_step_OBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count(0),
      I1 => Q(0),
      I2 => Q(2),
      I3 => count(2),
      I4 => Q(1),
      I5 => count(1),
      O => m2_step_OBUF_inst_i_2_n_0
    );
m2_step_OBUF_inst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count(3),
      I1 => Q(3),
      I2 => Q(5),
      I3 => count(5),
      I4 => Q(4),
      I5 => count(4),
      O => m2_step_OBUF_inst_i_3_n_0
    );
m2_step_OBUF_inst_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => count(6),
      I1 => Q(6),
      I2 => count(7),
      I3 => Q(7),
      O => m2_step_OBUF_inst_i_4_n_0
    );
\reg1_motor2_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55155515FFFF0000"
    )
        port map (
      I0 => clear_IBUF,
      I1 => m2_step_OBUF_inst_i_2_n_0,
      I2 => m2_step_OBUF_inst_i_3_n_0,
      I3 => m2_step_OBUF_inst_i_4_n_0,
      I4 => add_IBUF,
      I5 => Q(8),
      O => D(0)
    );
\reg1_motor2_reg[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAFFFF"
    )
        port map (
      I0 => clear_IBUF,
      I1 => m2_step_OBUF_inst_i_2_n_0,
      I2 => m2_step_OBUF_inst_i_3_n_0,
      I3 => m2_step_OBUF_inst_i_4_n_0,
      I4 => Q(8),
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \counter__parameterized3_1\ is
  port (
    internal_clear0 : out STD_LOGIC;
    \count_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    internal_clear00_out : out STD_LOGIC;
    reg2_motor1_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    motor_enable_OBUF : out STD_LOGIC;
    m1_step_OBUF : out STD_LOGIC;
    clear_IBUF : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    add_IBUF : in STD_LOGIC;
    motor_enable : in STD_LOGIC_VECTOR ( 0 to 0 );
    m1_step : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \counter__parameterized3_1\ : entity is "counter";
end \counter__parameterized3_1\;

architecture STRUCTURE of \counter__parameterized3_1\ is
  signal \^count_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \int_sig[7]_i_2_n_0\ : STD_LOGIC;
  signal int_sig_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal motor_enable_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal motor_enable_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal motor_enable_OBUF_inst_i_4_n_0 : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of dir_reg_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_sig[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_sig[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_sig[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_sig[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_sig[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_sig[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of internal_clear_reg_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of internal_clear_reg_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reg1_motor1_reg[10]_i_2\ : label is "soft_lutpair10";
begin
  \count_reg[7]_0\(7 downto 0) <= \^count_reg[7]_0\(7 downto 0);
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_sig_reg(0),
      Q => \^count_reg[7]_0\(0),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_sig_reg(1),
      Q => \^count_reg[7]_0\(1),
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_sig_reg(2),
      Q => \^count_reg[7]_0\(2),
      R => '0'
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_sig_reg(3),
      Q => \^count_reg[7]_0\(3),
      R => '0'
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_sig_reg(4),
      Q => \^count_reg[7]_0\(4),
      R => '0'
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_sig_reg(5),
      Q => \^count_reg[7]_0\(5),
      R => '0'
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_sig_reg(6),
      Q => \^count_reg[7]_0\(6),
      R => '0'
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_sig_reg(7),
      Q => \^count_reg[7]_0\(7),
      R => '0'
    );
dir_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55150000"
    )
        port map (
      I0 => clear_IBUF,
      I1 => motor_enable_OBUF_inst_i_2_n_0,
      I2 => motor_enable_OBUF_inst_i_3_n_0,
      I3 => motor_enable_OBUF_inst_i_4_n_0,
      I4 => Q(8),
      O => reg2_motor1_0
    );
\int_sig[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => int_sig_reg(0),
      O => \plusOp__0\(0)
    );
\int_sig[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => int_sig_reg(0),
      I1 => int_sig_reg(1),
      O => \plusOp__0\(1)
    );
\int_sig[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => int_sig_reg(0),
      I1 => int_sig_reg(1),
      I2 => int_sig_reg(2),
      O => \plusOp__0\(2)
    );
\int_sig[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => int_sig_reg(1),
      I1 => int_sig_reg(0),
      I2 => int_sig_reg(2),
      I3 => int_sig_reg(3),
      O => \plusOp__0\(3)
    );
\int_sig[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => int_sig_reg(2),
      I1 => int_sig_reg(0),
      I2 => int_sig_reg(1),
      I3 => int_sig_reg(3),
      I4 => int_sig_reg(4),
      O => \plusOp__0\(4)
    );
\int_sig[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => int_sig_reg(3),
      I1 => int_sig_reg(1),
      I2 => int_sig_reg(0),
      I3 => int_sig_reg(2),
      I4 => int_sig_reg(4),
      I5 => int_sig_reg(5),
      O => \plusOp__0\(5)
    );
\int_sig[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_sig[7]_i_2_n_0\,
      I1 => int_sig_reg(6),
      O => \plusOp__0\(6)
    );
\int_sig[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_sig[7]_i_2_n_0\,
      I1 => int_sig_reg(6),
      I2 => int_sig_reg(7),
      O => \plusOp__0\(7)
    );
\int_sig[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => int_sig_reg(5),
      I1 => int_sig_reg(3),
      I2 => int_sig_reg(1),
      I3 => int_sig_reg(0),
      I4 => int_sig_reg(2),
      I5 => int_sig_reg(4),
      O => \int_sig[7]_i_2_n_0\
    );
\int_sig_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(8),
      D => \plusOp__0\(0),
      Q => int_sig_reg(0),
      R => SR(0)
    );
\int_sig_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(8),
      D => \plusOp__0\(1),
      Q => int_sig_reg(1),
      R => SR(0)
    );
\int_sig_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(8),
      D => \plusOp__0\(2),
      Q => int_sig_reg(2),
      R => SR(0)
    );
\int_sig_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(8),
      D => \plusOp__0\(3),
      Q => int_sig_reg(3),
      R => SR(0)
    );
\int_sig_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(8),
      D => \plusOp__0\(4),
      Q => int_sig_reg(4),
      R => SR(0)
    );
\int_sig_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(8),
      D => \plusOp__0\(5),
      Q => int_sig_reg(5),
      R => SR(0)
    );
\int_sig_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(8),
      D => \plusOp__0\(6),
      Q => int_sig_reg(6),
      R => SR(0)
    );
\int_sig_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(8),
      D => \plusOp__0\(7),
      Q => int_sig_reg(7),
      R => SR(0)
    );
internal_clear_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAEA"
    )
        port map (
      I0 => clear_IBUF,
      I1 => motor_enable_OBUF_inst_i_2_n_0,
      I2 => motor_enable_OBUF_inst_i_3_n_0,
      I3 => motor_enable_OBUF_inst_i_4_n_0,
      O => internal_clear0
    );
internal_clear_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAFFFF"
    )
        port map (
      I0 => clear_IBUF,
      I1 => motor_enable_OBUF_inst_i_2_n_0,
      I2 => motor_enable_OBUF_inst_i_3_n_0,
      I3 => motor_enable_OBUF_inst_i_4_n_0,
      I4 => Q(8),
      O => internal_clear00_out
    );
m1_step_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5515000000000000"
    )
        port map (
      I0 => clear_IBUF,
      I1 => motor_enable_OBUF_inst_i_2_n_0,
      I2 => motor_enable_OBUF_inst_i_3_n_0,
      I3 => motor_enable_OBUF_inst_i_4_n_0,
      I4 => m1_step(0),
      I5 => Q(8),
      O => m1_step_OBUF
    );
motor_enable_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55150000FFFFFFFF"
    )
        port map (
      I0 => clear_IBUF,
      I1 => motor_enable_OBUF_inst_i_2_n_0,
      I2 => motor_enable_OBUF_inst_i_3_n_0,
      I3 => motor_enable_OBUF_inst_i_4_n_0,
      I4 => Q(8),
      I5 => motor_enable(0),
      O => motor_enable_OBUF
    );
motor_enable_OBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^count_reg[7]_0\(0),
      I1 => Q(0),
      I2 => Q(2),
      I3 => \^count_reg[7]_0\(2),
      I4 => Q(1),
      I5 => \^count_reg[7]_0\(1),
      O => motor_enable_OBUF_inst_i_2_n_0
    );
motor_enable_OBUF_inst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^count_reg[7]_0\(3),
      I1 => Q(3),
      I2 => Q(5),
      I3 => \^count_reg[7]_0\(5),
      I4 => Q(4),
      I5 => \^count_reg[7]_0\(4),
      O => motor_enable_OBUF_inst_i_3_n_0
    );
motor_enable_OBUF_inst_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^count_reg[7]_0\(6),
      I1 => Q(6),
      I2 => \^count_reg[7]_0\(7),
      I3 => Q(7),
      O => motor_enable_OBUF_inst_i_4_n_0
    );
\reg1_motor1_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55155515FFFF0000"
    )
        port map (
      I0 => clear_IBUF,
      I1 => motor_enable_OBUF_inst_i_2_n_0,
      I2 => motor_enable_OBUF_inst_i_3_n_0,
      I3 => motor_enable_OBUF_inst_i_4_n_0,
      I4 => add_IBUF,
      I5 => Q(8),
      O => D(0)
    );
\reg1_motor1_reg[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAFFFF"
    )
        port map (
      I0 => clear_IBUF,
      I1 => motor_enable_OBUF_inst_i_2_n_0,
      I2 => motor_enable_OBUF_inst_i_3_n_0,
      I3 => motor_enable_OBUF_inst_i_4_n_0,
      I4 => Q(8),
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity stepper is
  port (
    m1_dir_OBUF : out STD_LOGIC;
    \count_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    motor_enable_OBUF : out STD_LOGIC;
    m1_step_OBUF : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clear_IBUF : in STD_LOGIC;
    add_IBUF : in STD_LOGIC;
    motor_enable : in STD_LOGIC_VECTOR ( 0 to 0 );
    m1_step : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
end stepper;

architecture STRUCTURE of stepper is
  signal internal_clear : STD_LOGIC;
  signal internal_clear0 : STD_LOGIC;
  signal internal_clear00_out : STD_LOGIC;
  signal reg2_motor1_0 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of dir_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of dir_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of internal_clear_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of internal_clear_reg : label is "VCC:GE GND:CLR";
begin
countdown: entity work.\counter__parameterized3_1\
     port map (
      CLK => CLK,
      D(0) => D(0),
      E(0) => E(0),
      Q(8) => Q(9),
      Q(7 downto 0) => Q(7 downto 0),
      SR(0) => internal_clear,
      add_IBUF => add_IBUF,
      clear_IBUF => clear_IBUF,
      \count_reg[7]_0\(7 downto 0) => \count_reg[7]\(7 downto 0),
      internal_clear0 => internal_clear0,
      internal_clear00_out => internal_clear00_out,
      m1_step(0) => m1_step(0),
      m1_step_OBUF => m1_step_OBUF,
      motor_enable(0) => motor_enable(0),
      motor_enable_OBUF => motor_enable_OBUF,
      reg2_motor1_0 => reg2_motor1_0
    );
dir_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => Q(8),
      G => reg2_motor1_0,
      GE => '1',
      Q => m1_dir_OBUF
    );
internal_clear_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => internal_clear0,
      G => internal_clear00_out,
      GE => '1',
      Q => internal_clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity stepper_0 is
  port (
    m2_dir_OBUF : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    m2_step_OBUF : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clear_IBUF : in STD_LOGIC;
    add_IBUF : in STD_LOGIC;
    m2_step : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of stepper_0 : entity is "stepper";
end stepper_0;

architecture STRUCTURE of stepper_0 is
  signal internal_clear : STD_LOGIC;
  signal internal_clear0 : STD_LOGIC;
  signal internal_clear00_out : STD_LOGIC;
  signal reg1_motor2 : STD_LOGIC_VECTOR ( 10 to 10 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of dir_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of dir_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of internal_clear_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of internal_clear_reg : label is "VCC:GE GND:CLR";
begin
countdown: entity work.\counter__parameterized3\
     port map (
      CLK => CLK,
      D(0) => D(0),
      E(0) => E(0),
      Q(8) => Q(9),
      Q(7 downto 0) => Q(7 downto 0),
      SR(0) => internal_clear,
      add_IBUF => add_IBUF,
      clear_IBUF => clear_IBUF,
      internal_clear0 => internal_clear0,
      internal_clear00_out => internal_clear00_out,
      m2_step(0) => m2_step(0),
      m2_step_OBUF => m2_step_OBUF,
      reg1_motor2(0) => reg1_motor2(10)
    );
dir_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => Q(8),
      G => reg1_motor2(10),
      GE => '1',
      Q => m2_dir_OBUF
    );
internal_clear_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => internal_clear0,
      G => internal_clear00_out,
      GE => '1',
      Q => internal_clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top is
  port (
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    input : in STD_LOGIC_VECTOR ( 3 downto 0 );
    LED : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clear : in STD_LOGIC;
    save : in STD_LOGIC;
    switchnum : in STD_LOGIC_VECTOR ( 3 downto 0 );
    selectseg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    motor_enable : out STD_LOGIC;
    m1_dir : out STD_LOGIC;
    m1_step : out STD_LOGIC;
    m2_dir : out STD_LOGIC;
    m2_step : out STD_LOGIC;
    add : in STD_LOGIC;
    left : in STD_LOGIC;
    right : in STD_LOGIC;
    CLK100MHZ : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top : entity is true;
end top;

architecture STRUCTURE of top is
  signal CLK100MHZ_IBUF : STD_LOGIC;
  signal CLK100MHZ_IBUF_BUFG : STD_LOGIC;
  signal LED_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal PCOUT : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \PCOUT__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal add_IBUF : STD_LOGIC;
  signal \blink[4]\ : STD_LOGIC;
  signal \blink_BUFG[4]\ : STD_LOGIC;
  signal clear_IBUF : STD_LOGIC;
  signal counter_blink_n_0 : STD_LOGIC;
  signal counter_blink_n_3 : STD_LOGIC;
  signal counter_blink_n_4 : STD_LOGIC;
  signal counter_selectseg_n_8 : STD_LOGIC;
  signal direction : STD_LOGIC;
  signal enable : STD_LOGIC;
  signal m1_dir_OBUF : STD_LOGIC;
  signal m1_step_OBUF : STD_LOGIC;
  signal m2_dir_OBUF : STD_LOGIC;
  signal m2_step_OBUF : STD_LOGIC;
  signal motor_enable_OBUF : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_4_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_5_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_6_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_7_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_9_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pulse : STD_LOGIC;
  signal reg1_motor10 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal reg1_motor11 : STD_LOGIC;
  signal \reg1_motor1_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_motor1_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \reg1_motor1_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \reg1_motor1_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \reg1_motor1_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \reg1_motor1_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \reg1_motor1_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_11_n_0\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_12_n_0\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_13_n_0\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_14_n_0\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_3_n_1\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_3_n_2\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_3_n_3\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_4_n_2\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_4_n_3\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_4_n_5\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_4_n_6\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_4_n_7\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \reg1_motor1_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal \reg1_motor1_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal reg1_motor20 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal reg1_motor21 : STD_LOGIC;
  signal \reg1_motor2__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \reg1_motor2_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_motor2_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \reg1_motor2_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \reg1_motor2_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \reg1_motor2_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \reg1_motor2_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \reg1_motor2_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_11_n_0\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_12_n_0\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_13_n_0\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_14_n_0\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_3_n_1\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_3_n_2\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_3_n_3\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_4_n_2\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_4_n_3\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_4_n_5\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_4_n_6\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_4_n_7\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \reg1_motor2_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal \register2_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \register2_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \register2_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \register2_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \register2_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \register2_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \register2_reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \register2_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \register2_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \register2_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \register2_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \register2_reg_n_0_[0]\ : STD_LOGIC;
  signal \register2_reg_n_0_[3]\ : STD_LOGIC;
  signal save_IBUF : STD_LOGIC;
  signal seg_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal selectseg_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal stepper1_n_10 : STD_LOGIC;
  signal stepper1_n_9 : STD_LOGIC;
  signal stepper2_n_1 : STD_LOGIC;
  signal stepper2_n_2 : STD_LOGIC;
  signal switchnum_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_reg1_motor1_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_reg1_motor1_reg[7]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_reg1_motor1_reg[7]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_reg1_motor1_reg[7]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_reg1_motor1_reg[7]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_reg1_motor1_reg[7]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_reg1_motor2_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_reg1_motor2_reg[7]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_reg1_motor2_reg[7]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_reg1_motor2_reg[7]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_reg1_motor2_reg[7]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_reg1_motor2_reg[7]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \reg1_motor1_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \reg1_motor1_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \reg1_motor1_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_motor1_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \reg1_motor1_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_motor1_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \reg1_motor1_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_motor1_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \reg1_motor1_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_motor1_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \reg1_motor1_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_motor1_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \reg1_motor1_reg[4]_i_1\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \reg1_motor1_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_motor1_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \reg1_motor1_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_motor1_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \reg1_motor1_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_motor1_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute ADDER_THRESHOLD of \reg1_motor1_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \reg1_motor1_reg[7]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \reg1_motor1_reg[7]_i_3\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \reg1_motor1_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_motor1_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \reg1_motor1_reg[9]_i_2\ : label is "soft_lutpair23";
  attribute XILINX_LEGACY_PRIM of \reg1_motor2_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_motor2_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \reg1_motor2_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_motor2_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \reg1_motor2_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_motor2_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \reg1_motor2_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_motor2_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \reg1_motor2_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_motor2_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \reg1_motor2_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_motor2_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute ADDER_THRESHOLD of \reg1_motor2_reg[4]_i_1\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \reg1_motor2_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_motor2_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \reg1_motor2_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_motor2_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \reg1_motor2_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_motor2_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute ADDER_THRESHOLD of \reg1_motor2_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \reg1_motor2_reg[7]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \reg1_motor2_reg[7]_i_3\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \reg1_motor2_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_motor2_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reg1_motor2_reg[9]_i_1\ : label is "soft_lutpair23";
  attribute XILINX_LEGACY_PRIM of \register2_reg[0]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[0]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[10]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[10]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[11]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[11]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \register2_reg[11]_i_1\ : label is "soft_lutpair20";
  attribute XILINX_LEGACY_PRIM of \register2_reg[12]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[12]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[13]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[13]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[14]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[14]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[15]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[15]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \register2_reg[15]_i_1\ : label is "soft_lutpair22";
  attribute XILINX_LEGACY_PRIM of \register2_reg[16]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[16]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[17]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[17]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[18]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[18]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[19]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[19]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \register2_reg[19]_i_1\ : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM of \register2_reg[1]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[1]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[20]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[20]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[21]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[21]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[22]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[22]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[23]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[23]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \register2_reg[23]_i_1\ : label is "soft_lutpair22";
  attribute XILINX_LEGACY_PRIM of \register2_reg[24]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[24]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[25]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[25]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[26]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[26]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[27]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[27]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \register2_reg[27]_i_1\ : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM of \register2_reg[28]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[28]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[29]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[29]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[2]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[2]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[30]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[30]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[31]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[31]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \register2_reg[31]_i_2\ : label is "soft_lutpair21";
  attribute XILINX_LEGACY_PRIM of \register2_reg[3]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[3]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \register2_reg[3]_i_1\ : label is "soft_lutpair21";
  attribute XILINX_LEGACY_PRIM of \register2_reg[4]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[4]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[5]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[5]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[6]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[6]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[7]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[7]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \register2_reg[7]_i_1\ : label is "soft_lutpair20";
  attribute XILINX_LEGACY_PRIM of \register2_reg[8]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[8]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register2_reg[9]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register2_reg[9]\ : label is "VCC:GE";
begin
CLK100MHZ_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK100MHZ_IBUF,
      O => CLK100MHZ_IBUF_BUFG
    );
CLK100MHZ_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK100MHZ,
      O => CLK100MHZ_IBUF
    );
\LED_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(0),
      O => LED(0)
    );
\LED_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(10),
      O => LED(10)
    );
\LED_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(11),
      O => LED(11)
    );
\LED_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(12),
      O => LED(12)
    );
\LED_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(13),
      O => LED(13)
    );
\LED_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(14),
      O => LED(14)
    );
\LED_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(15),
      O => LED(15)
    );
\LED_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(1),
      O => LED(1)
    );
\LED_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(2),
      O => LED(2)
    );
\LED_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(3),
      O => LED(3)
    );
\LED_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(4),
      O => LED(4)
    );
\LED_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(5),
      O => LED(5)
    );
\LED_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(6),
      O => LED(6)
    );
\LED_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(7),
      O => LED(7)
    );
\LED_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(8),
      O => LED(8)
    );
\LED_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(9),
      O => LED(9)
    );
add_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => add,
      O => add_IBUF
    );
\blink_BUFG[4]_inst\: unisim.vcomponents.BUFG
     port map (
      I => \blink[4]\,
      O => \blink_BUFG[4]\
    );
clear_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clear,
      O => clear_IBUF
    );
counter_blink: entity work.\counter__parameterized1\
     port map (
      Q(1) => p_0_in0,
      Q(0) => \blink[4]\,
      clear_IBUF => clear_IBUF,
      \count_reg[8]_0\ => counter_blink_n_0,
      \count_reg[8]_1\ => counter_blink_n_3,
      \count_reg[8]_2\ => counter_blink_n_4,
      pulse => pulse,
      \selectseg_OBUF[7]_inst_i_1\(0) => counter_selectseg_n_8,
      switchnum_IBUF(3 downto 0) => switchnum_IBUF(3 downto 0)
    );
counter_selectseg: entity work.counter
     port map (
      CLK => pulse,
      Q(0) => counter_selectseg_n_8,
      clear_IBUF => clear_IBUF,
      seg_OBUF(6 downto 0) => seg_OBUF(6 downto 0),
      \seg_OBUF[6]_inst_i_3_0\(31 downto 28) => p_3_in(3 downto 0),
      \seg_OBUF[6]_inst_i_3_0\(27 downto 24) => p_4_in(3 downto 0),
      \seg_OBUF[6]_inst_i_3_0\(23 downto 20) => p_5_in(3 downto 0),
      \seg_OBUF[6]_inst_i_3_0\(19 downto 16) => p_6_in(3 downto 0),
      \seg_OBUF[6]_inst_i_3_0\(15 downto 12) => p_7_in(3 downto 0),
      \seg_OBUF[6]_inst_i_3_0\(11 downto 8) => p_0_in(3 downto 0),
      \seg_OBUF[6]_inst_i_3_0\(7 downto 4) => p_9_in(3 downto 0),
      \seg_OBUF[6]_inst_i_3_0\(3) => \register2_reg_n_0_[3]\,
      \seg_OBUF[6]_inst_i_3_0\(2) => p_2_in,
      \seg_OBUF[6]_inst_i_3_0\(1) => p_1_in,
      \seg_OBUF[6]_inst_i_3_0\(0) => \register2_reg_n_0_[0]\,
      \selectseg[1]\ => counter_blink_n_0,
      \selectseg[3]\(0) => p_0_in0,
      \selectseg[5]\ => counter_blink_n_3,
      \selectseg[7]\ => counter_blink_n_4,
      selectseg_OBUF(7 downto 0) => selectseg_OBUF(7 downto 0),
      switchnum_IBUF(3 downto 0) => switchnum_IBUF(3 downto 0)
    );
m1_dir_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => m1_dir_OBUF,
      O => m1_dir
    );
m1_step_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => m1_step_OBUF,
      O => m1_step
    );
m2_dir_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => m2_dir_OBUF,
      O => m2_dir
    );
m2_step_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => m2_step_OBUF,
      O => m2_step
    );
mid_clock: entity work.clock_enable
     port map (
      CLK => pulse,
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      clear_IBUF => clear_IBUF
    );
motor_enable_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => motor_enable_OBUF,
      O => motor_enable
    );
\reg1_motor1_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \register2_reg_n_0_[0]\,
      G => reg1_motor11,
      GE => '1',
      Q => LED_OBUF(0)
    );
\reg1_motor1_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => stepper1_n_10,
      G => stepper1_n_9,
      GE => '1',
      Q => enable
    );
\reg1_motor1_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => reg1_motor10(1),
      G => reg1_motor11,
      GE => '1',
      Q => LED_OBUF(1)
    );
\reg1_motor1_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => reg1_motor10(2),
      G => reg1_motor11,
      GE => '1',
      Q => LED_OBUF(2)
    );
\reg1_motor1_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => reg1_motor10(3),
      G => reg1_motor11,
      GE => '1',
      Q => LED_OBUF(3)
    );
\reg1_motor1_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => reg1_motor10(4),
      G => reg1_motor11,
      GE => '1',
      Q => LED_OBUF(4)
    );
\reg1_motor1_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \reg1_motor1_reg[4]_i_1_n_0\,
      CO(2) => \reg1_motor1_reg[4]_i_1_n_1\,
      CO(1) => \reg1_motor1_reg[4]_i_1_n_2\,
      CO(0) => \reg1_motor1_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \register2_reg_n_0_[3]\,
      DI(1) => p_2_in,
      DI(0) => p_1_in,
      O(3 downto 0) => reg1_motor10(4 downto 1),
      S(3) => PCOUT(4),
      S(2) => \reg1_motor1_reg[4]_i_2_n_0\,
      S(1) => \reg1_motor1_reg[4]_i_3_n_0\,
      S(0) => \reg1_motor1_reg[4]_i_4_n_0\
    );
\reg1_motor1_reg[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \register2_reg_n_0_[3]\,
      I1 => PCOUT(3),
      O => \reg1_motor1_reg[4]_i_2_n_0\
    );
\reg1_motor1_reg[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_2_in,
      I1 => PCOUT(2),
      O => \reg1_motor1_reg[4]_i_3_n_0\
    );
\reg1_motor1_reg[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in,
      I1 => PCOUT(1),
      O => \reg1_motor1_reg[4]_i_4_n_0\
    );
\reg1_motor1_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => reg1_motor10(5),
      G => reg1_motor11,
      GE => '1',
      Q => LED_OBUF(5)
    );
\reg1_motor1_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => reg1_motor10(6),
      G => reg1_motor11,
      GE => '1',
      Q => LED_OBUF(6)
    );
\reg1_motor1_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => reg1_motor10(7),
      G => reg1_motor11,
      GE => '1',
      Q => LED_OBUF(7)
    );
\reg1_motor1_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg1_motor1_reg[4]_i_1_n_0\,
      CO(3 downto 2) => \NLW_reg1_motor1_reg[7]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \reg1_motor1_reg[7]_i_1_n_2\,
      CO(0) => \reg1_motor1_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_reg1_motor1_reg[7]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => reg1_motor10(7 downto 5),
      S(3) => '0',
      S(2 downto 0) => PCOUT(7 downto 5)
    );
\reg1_motor1_reg[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_9_in(1),
      I1 => p_0_in(0),
      O => \reg1_motor1_reg[7]_i_10_n_0\
    );
\reg1_motor1_reg[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      O => \reg1_motor1_reg[7]_i_11_n_0\
    );
\reg1_motor1_reg[7]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(2),
      O => \reg1_motor1_reg[7]_i_12_n_0\
    );
\reg1_motor1_reg[7]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(3),
      I2 => p_0_in(1),
      O => \reg1_motor1_reg[7]_i_13_n_0\
    );
\reg1_motor1_reg[7]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      O => \reg1_motor1_reg[7]_i_14_n_0\
    );
\reg1_motor1_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg1_motor1_reg[7]_i_3_n_0\,
      CO(3) => \NLW_reg1_motor1_reg[7]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \reg1_motor1_reg[7]_i_2_n_1\,
      CO(1) => \reg1_motor1_reg[7]_i_2_n_2\,
      CO(0) => \reg1_motor1_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \reg1_motor1_reg[7]_i_4_n_6\,
      DI(1) => \reg1_motor1_reg[7]_i_4_n_7\,
      DI(0) => p_0_in(2),
      O(3 downto 0) => PCOUT(7 downto 4),
      S(3) => \reg1_motor1_reg[7]_i_5_n_0\,
      S(2) => \reg1_motor1_reg[7]_i_6_n_0\,
      S(1) => \reg1_motor1_reg[7]_i_7_n_0\,
      S(0) => \reg1_motor1_reg[7]_i_8_n_0\
    );
\reg1_motor1_reg[7]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \reg1_motor1_reg[7]_i_3_n_0\,
      CO(2) => \reg1_motor1_reg[7]_i_3_n_1\,
      CO(1) => \reg1_motor1_reg[7]_i_3_n_2\,
      CO(0) => \reg1_motor1_reg[7]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => p_0_in(1),
      DI(2 downto 1) => p_9_in(1 downto 0),
      DI(0) => '0',
      O(3 downto 1) => PCOUT(3 downto 1),
      O(0) => \NLW_reg1_motor1_reg[7]_i_3_O_UNCONNECTED\(0),
      S(3) => \reg1_motor1_reg[7]_i_9_n_0\,
      S(2) => \reg1_motor1_reg[7]_i_10_n_0\,
      S(1) => p_9_in(0),
      S(0) => '0'
    );
\reg1_motor1_reg[7]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_reg1_motor1_reg[7]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \reg1_motor1_reg[7]_i_4_n_2\,
      CO(0) => \reg1_motor1_reg[7]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \reg1_motor1_reg[7]_i_11_n_0\,
      DI(0) => '0',
      O(3) => \NLW_reg1_motor1_reg[7]_i_4_O_UNCONNECTED\(3),
      O(2) => \reg1_motor1_reg[7]_i_4_n_5\,
      O(1) => \reg1_motor1_reg[7]_i_4_n_6\,
      O(0) => \reg1_motor1_reg[7]_i_4_n_7\,
      S(3) => '0',
      S(2) => \reg1_motor1_reg[7]_i_12_n_0\,
      S(1) => \reg1_motor1_reg[7]_i_13_n_0\,
      S(0) => \reg1_motor1_reg[7]_i_14_n_0\
    );
\reg1_motor1_reg[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F7FC080"
    )
        port map (
      I0 => p_9_in(0),
      I1 => p_9_in(2),
      I2 => p_9_in(3),
      I3 => p_9_in(1),
      I4 => \reg1_motor1_reg[7]_i_4_n_5\,
      O => \reg1_motor1_reg[7]_i_5_n_0\
    );
\reg1_motor1_reg[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B5D54A2A"
    )
        port map (
      I0 => p_9_in(3),
      I1 => p_9_in(0),
      I2 => p_9_in(2),
      I3 => p_9_in(1),
      I4 => \reg1_motor1_reg[7]_i_4_n_6\,
      O => \reg1_motor1_reg[7]_i_6_n_0\
    );
\reg1_motor1_reg[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BD95426A"
    )
        port map (
      I0 => p_9_in(2),
      I1 => p_9_in(1),
      I2 => p_9_in(3),
      I3 => p_9_in(0),
      I4 => \reg1_motor1_reg[7]_i_4_n_7\,
      O => \reg1_motor1_reg[7]_i_7_n_0\
    );
\reg1_motor1_reg[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999666"
    )
        port map (
      I0 => p_9_in(3),
      I1 => p_9_in(1),
      I2 => p_9_in(0),
      I3 => p_9_in(2),
      I4 => p_0_in(2),
      O => \reg1_motor1_reg[7]_i_8_n_0\
    );
\reg1_motor1_reg[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_9_in(0),
      I1 => p_9_in(2),
      I2 => p_0_in(1),
      O => \reg1_motor1_reg[7]_i_9_n_0\
    );
\reg1_motor1_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \reg1_motor1_reg[9]_i_1_n_0\,
      G => reg1_motor11,
      GE => '1',
      Q => direction
    );
\reg1_motor1_reg[9]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => input(1),
      O => \reg1_motor1_reg[9]_i_1_n_0\
    );
\reg1_motor1_reg[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => add_IBUF,
      I1 => enable,
      O => reg1_motor11
    );
\reg1_motor2_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => p_6_in(0),
      G => reg1_motor21,
      GE => '1',
      Q => \reg1_motor2__0\(0)
    );
\reg1_motor2_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => stepper2_n_2,
      G => stepper2_n_1,
      GE => '1',
      Q => \reg1_motor2__0\(10)
    );
\reg1_motor2_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => reg1_motor20(1),
      G => reg1_motor21,
      GE => '1',
      Q => \reg1_motor2__0\(1)
    );
\reg1_motor2_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => reg1_motor20(2),
      G => reg1_motor21,
      GE => '1',
      Q => \reg1_motor2__0\(2)
    );
\reg1_motor2_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => reg1_motor20(3),
      G => reg1_motor21,
      GE => '1',
      Q => \reg1_motor2__0\(3)
    );
\reg1_motor2_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => reg1_motor20(4),
      G => reg1_motor21,
      GE => '1',
      Q => \reg1_motor2__0\(4)
    );
\reg1_motor2_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \reg1_motor2_reg[4]_i_1_n_0\,
      CO(2) => \reg1_motor2_reg[4]_i_1_n_1\,
      CO(1) => \reg1_motor2_reg[4]_i_1_n_2\,
      CO(0) => \reg1_motor2_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => p_6_in(3 downto 1),
      O(3 downto 0) => reg1_motor20(4 downto 1),
      S(3) => \PCOUT__0\(4),
      S(2) => \reg1_motor2_reg[4]_i_2_n_0\,
      S(1) => \reg1_motor2_reg[4]_i_3_n_0\,
      S(0) => \reg1_motor2_reg[4]_i_4_n_0\
    );
\reg1_motor2_reg[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_6_in(3),
      I1 => \PCOUT__0\(3),
      O => \reg1_motor2_reg[4]_i_2_n_0\
    );
\reg1_motor2_reg[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_6_in(2),
      I1 => \PCOUT__0\(2),
      O => \reg1_motor2_reg[4]_i_3_n_0\
    );
\reg1_motor2_reg[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_6_in(1),
      I1 => \PCOUT__0\(1),
      O => \reg1_motor2_reg[4]_i_4_n_0\
    );
\reg1_motor2_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => reg1_motor20(5),
      G => reg1_motor21,
      GE => '1',
      Q => \reg1_motor2__0\(5)
    );
\reg1_motor2_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => reg1_motor20(6),
      G => reg1_motor21,
      GE => '1',
      Q => \reg1_motor2__0\(6)
    );
\reg1_motor2_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => reg1_motor20(7),
      G => reg1_motor21,
      GE => '1',
      Q => \reg1_motor2__0\(7)
    );
\reg1_motor2_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg1_motor2_reg[4]_i_1_n_0\,
      CO(3 downto 2) => \NLW_reg1_motor2_reg[7]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \reg1_motor2_reg[7]_i_1_n_2\,
      CO(0) => \reg1_motor2_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_reg1_motor2_reg[7]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => reg1_motor20(7 downto 5),
      S(3) => '0',
      S(2 downto 0) => \PCOUT__0\(7 downto 5)
    );
\reg1_motor2_reg[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_5_in(1),
      I1 => p_4_in(0),
      O => \reg1_motor2_reg[7]_i_10_n_0\
    );
\reg1_motor2_reg[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_4_in(3),
      I1 => p_4_in(0),
      O => \reg1_motor2_reg[7]_i_11_n_0\
    );
\reg1_motor2_reg[7]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_4_in(0),
      I1 => p_4_in(2),
      O => \reg1_motor2_reg[7]_i_12_n_0\
    );
\reg1_motor2_reg[7]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => p_4_in(0),
      I1 => p_4_in(3),
      I2 => p_4_in(1),
      O => \reg1_motor2_reg[7]_i_13_n_0\
    );
\reg1_motor2_reg[7]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_4_in(3),
      I1 => p_4_in(0),
      O => \reg1_motor2_reg[7]_i_14_n_0\
    );
\reg1_motor2_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg1_motor2_reg[7]_i_3_n_0\,
      CO(3) => \NLW_reg1_motor2_reg[7]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \reg1_motor2_reg[7]_i_2_n_1\,
      CO(1) => \reg1_motor2_reg[7]_i_2_n_2\,
      CO(0) => \reg1_motor2_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \reg1_motor2_reg[7]_i_4_n_6\,
      DI(1) => \reg1_motor2_reg[7]_i_4_n_7\,
      DI(0) => p_4_in(2),
      O(3 downto 0) => \PCOUT__0\(7 downto 4),
      S(3) => \reg1_motor2_reg[7]_i_5_n_0\,
      S(2) => \reg1_motor2_reg[7]_i_6_n_0\,
      S(1) => \reg1_motor2_reg[7]_i_7_n_0\,
      S(0) => \reg1_motor2_reg[7]_i_8_n_0\
    );
\reg1_motor2_reg[7]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \reg1_motor2_reg[7]_i_3_n_0\,
      CO(2) => \reg1_motor2_reg[7]_i_3_n_1\,
      CO(1) => \reg1_motor2_reg[7]_i_3_n_2\,
      CO(0) => \reg1_motor2_reg[7]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => p_4_in(1),
      DI(2 downto 1) => p_5_in(1 downto 0),
      DI(0) => '0',
      O(3 downto 1) => \PCOUT__0\(3 downto 1),
      O(0) => \NLW_reg1_motor2_reg[7]_i_3_O_UNCONNECTED\(0),
      S(3) => \reg1_motor2_reg[7]_i_9_n_0\,
      S(2) => \reg1_motor2_reg[7]_i_10_n_0\,
      S(1) => p_5_in(0),
      S(0) => '0'
    );
\reg1_motor2_reg[7]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_reg1_motor2_reg[7]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \reg1_motor2_reg[7]_i_4_n_2\,
      CO(0) => \reg1_motor2_reg[7]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \reg1_motor2_reg[7]_i_11_n_0\,
      DI(0) => '0',
      O(3) => \NLW_reg1_motor2_reg[7]_i_4_O_UNCONNECTED\(3),
      O(2) => \reg1_motor2_reg[7]_i_4_n_5\,
      O(1) => \reg1_motor2_reg[7]_i_4_n_6\,
      O(0) => \reg1_motor2_reg[7]_i_4_n_7\,
      S(3) => '0',
      S(2) => \reg1_motor2_reg[7]_i_12_n_0\,
      S(1) => \reg1_motor2_reg[7]_i_13_n_0\,
      S(0) => \reg1_motor2_reg[7]_i_14_n_0\
    );
\reg1_motor2_reg[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F7FC080"
    )
        port map (
      I0 => p_5_in(0),
      I1 => p_5_in(2),
      I2 => p_5_in(3),
      I3 => p_5_in(1),
      I4 => \reg1_motor2_reg[7]_i_4_n_5\,
      O => \reg1_motor2_reg[7]_i_5_n_0\
    );
\reg1_motor2_reg[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B5D54A2A"
    )
        port map (
      I0 => p_5_in(3),
      I1 => p_5_in(0),
      I2 => p_5_in(2),
      I3 => p_5_in(1),
      I4 => \reg1_motor2_reg[7]_i_4_n_6\,
      O => \reg1_motor2_reg[7]_i_6_n_0\
    );
\reg1_motor2_reg[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BD95426A"
    )
        port map (
      I0 => p_5_in(2),
      I1 => p_5_in(1),
      I2 => p_5_in(3),
      I3 => p_5_in(0),
      I4 => \reg1_motor2_reg[7]_i_4_n_7\,
      O => \reg1_motor2_reg[7]_i_7_n_0\
    );
\reg1_motor2_reg[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999666"
    )
        port map (
      I0 => p_5_in(3),
      I1 => p_5_in(1),
      I2 => p_5_in(0),
      I3 => p_5_in(2),
      I4 => p_4_in(2),
      O => \reg1_motor2_reg[7]_i_8_n_0\
    );
\reg1_motor2_reg[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_5_in(0),
      I1 => p_5_in(2),
      I2 => p_4_in(1),
      O => \reg1_motor2_reg[7]_i_9_n_0\
    );
\reg1_motor2_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \register2_reg[30]_i_1_n_0\,
      G => reg1_motor21,
      GE => '1',
      Q => \reg1_motor2__0\(9)
    );
\reg1_motor2_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => add_IBUF,
      I1 => \reg1_motor2__0\(10),
      O => reg1_motor21
    );
\register2_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[28]_i_1_n_0\,
      G => \register2_reg[3]_i_1_n_0\,
      GE => '1',
      Q => \register2_reg_n_0_[0]\
    );
\register2_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[30]_i_1_n_0\,
      G => \register2_reg[11]_i_1_n_0\,
      GE => '1',
      Q => p_0_in(2)
    );
\register2_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[31]_i_1_n_0\,
      G => \register2_reg[11]_i_1_n_0\,
      GE => '1',
      Q => p_0_in(3)
    );
\register2_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => switchnum_IBUF(1),
      I1 => switchnum_IBUF(2),
      I2 => save_IBUF,
      I3 => switchnum_IBUF(0),
      I4 => switchnum_IBUF(3),
      O => \register2_reg[11]_i_1_n_0\
    );
\register2_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[28]_i_1_n_0\,
      G => \register2_reg[15]_i_1_n_0\,
      GE => '1',
      Q => p_7_in(0)
    );
\register2_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \reg1_motor1_reg[9]_i_1_n_0\,
      G => \register2_reg[15]_i_1_n_0\,
      GE => '1',
      Q => p_7_in(1)
    );
\register2_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[30]_i_1_n_0\,
      G => \register2_reg[15]_i_1_n_0\,
      GE => '1',
      Q => p_7_in(2)
    );
\register2_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[31]_i_1_n_0\,
      G => \register2_reg[15]_i_1_n_0\,
      GE => '1',
      Q => p_7_in(3)
    );
\register2_reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => switchnum_IBUF(3),
      I1 => switchnum_IBUF(1),
      I2 => switchnum_IBUF(0),
      I3 => switchnum_IBUF(2),
      I4 => save_IBUF,
      O => \register2_reg[15]_i_1_n_0\
    );
\register2_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[28]_i_1_n_0\,
      G => \register2_reg[19]_i_1_n_0\,
      GE => '1',
      Q => p_6_in(0)
    );
\register2_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \reg1_motor1_reg[9]_i_1_n_0\,
      G => \register2_reg[19]_i_1_n_0\,
      GE => '1',
      Q => p_6_in(1)
    );
\register2_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[30]_i_1_n_0\,
      G => \register2_reg[19]_i_1_n_0\,
      GE => '1',
      Q => p_6_in(2)
    );
\register2_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[31]_i_1_n_0\,
      G => \register2_reg[19]_i_1_n_0\,
      GE => '1',
      Q => p_6_in(3)
    );
\register2_reg[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => switchnum_IBUF(2),
      I1 => switchnum_IBUF(0),
      I2 => save_IBUF,
      I3 => switchnum_IBUF(1),
      I4 => switchnum_IBUF(3),
      O => \register2_reg[19]_i_1_n_0\
    );
\register2_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \reg1_motor1_reg[9]_i_1_n_0\,
      G => \register2_reg[3]_i_1_n_0\,
      GE => '1',
      Q => p_1_in
    );
\register2_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[28]_i_1_n_0\,
      G => \register2_reg[23]_i_1_n_0\,
      GE => '1',
      Q => p_5_in(0)
    );
\register2_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \reg1_motor1_reg[9]_i_1_n_0\,
      G => \register2_reg[23]_i_1_n_0\,
      GE => '1',
      Q => p_5_in(1)
    );
\register2_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[30]_i_1_n_0\,
      G => \register2_reg[23]_i_1_n_0\,
      GE => '1',
      Q => p_5_in(2)
    );
\register2_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[31]_i_1_n_0\,
      G => \register2_reg[23]_i_1_n_0\,
      GE => '1',
      Q => p_5_in(3)
    );
\register2_reg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => switchnum_IBUF(3),
      I1 => switchnum_IBUF(2),
      I2 => switchnum_IBUF(0),
      I3 => switchnum_IBUF(1),
      I4 => save_IBUF,
      O => \register2_reg[23]_i_1_n_0\
    );
\register2_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[28]_i_1_n_0\,
      G => \register2_reg[27]_i_1_n_0\,
      GE => '1',
      Q => p_4_in(0)
    );
\register2_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \reg1_motor1_reg[9]_i_1_n_0\,
      G => \register2_reg[27]_i_1_n_0\,
      GE => '1',
      Q => p_4_in(1)
    );
\register2_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[30]_i_1_n_0\,
      G => \register2_reg[27]_i_1_n_0\,
      GE => '1',
      Q => p_4_in(2)
    );
\register2_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[31]_i_1_n_0\,
      G => \register2_reg[27]_i_1_n_0\,
      GE => '1',
      Q => p_4_in(3)
    );
\register2_reg[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => switchnum_IBUF(3),
      I1 => switchnum_IBUF(1),
      I2 => switchnum_IBUF(2),
      I3 => switchnum_IBUF(0),
      I4 => save_IBUF,
      O => \register2_reg[27]_i_1_n_0\
    );
\register2_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[28]_i_1_n_0\,
      G => \register2_reg[31]_i_2_n_0\,
      GE => '1',
      Q => p_3_in(0)
    );
\register2_reg[28]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => input(0),
      O => \register2_reg[28]_i_1_n_0\
    );
\register2_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \reg1_motor1_reg[9]_i_1_n_0\,
      G => \register2_reg[31]_i_2_n_0\,
      GE => '1',
      Q => p_3_in(1)
    );
\register2_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[30]_i_1_n_0\,
      G => \register2_reg[3]_i_1_n_0\,
      GE => '1',
      Q => p_2_in
    );
\register2_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[30]_i_1_n_0\,
      G => \register2_reg[31]_i_2_n_0\,
      GE => '1',
      Q => p_3_in(2)
    );
\register2_reg[30]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => input(2),
      O => \register2_reg[30]_i_1_n_0\
    );
\register2_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[31]_i_1_n_0\,
      G => \register2_reg[31]_i_2_n_0\,
      GE => '1',
      Q => p_3_in(3)
    );
\register2_reg[31]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => input(3),
      O => \register2_reg[31]_i_1_n_0\
    );
\register2_reg[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => switchnum_IBUF(3),
      I1 => switchnum_IBUF(1),
      I2 => switchnum_IBUF(0),
      I3 => save_IBUF,
      I4 => switchnum_IBUF(2),
      O => \register2_reg[31]_i_2_n_0\
    );
\register2_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[31]_i_1_n_0\,
      G => \register2_reg[3]_i_1_n_0\,
      GE => '1',
      Q => \register2_reg_n_0_[3]\
    );
\register2_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => save_IBUF,
      I1 => switchnum_IBUF(2),
      I2 => switchnum_IBUF(1),
      I3 => switchnum_IBUF(0),
      I4 => switchnum_IBUF(3),
      O => \register2_reg[3]_i_1_n_0\
    );
\register2_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[28]_i_1_n_0\,
      G => \register2_reg[7]_i_1_n_0\,
      GE => '1',
      Q => p_9_in(0)
    );
\register2_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \reg1_motor1_reg[9]_i_1_n_0\,
      G => \register2_reg[7]_i_1_n_0\,
      GE => '1',
      Q => p_9_in(1)
    );
\register2_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[30]_i_1_n_0\,
      G => \register2_reg[7]_i_1_n_0\,
      GE => '1',
      Q => p_9_in(2)
    );
\register2_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[31]_i_1_n_0\,
      G => \register2_reg[7]_i_1_n_0\,
      GE => '1',
      Q => p_9_in(3)
    );
\register2_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => switchnum_IBUF(0),
      I1 => switchnum_IBUF(2),
      I2 => save_IBUF,
      I3 => switchnum_IBUF(1),
      I4 => switchnum_IBUF(3),
      O => \register2_reg[7]_i_1_n_0\
    );
\register2_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \register2_reg[28]_i_1_n_0\,
      G => \register2_reg[11]_i_1_n_0\,
      GE => '1',
      Q => p_0_in(0)
    );
\register2_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => clear_IBUF,
      D => \reg1_motor1_reg[9]_i_1_n_0\,
      G => \register2_reg[11]_i_1_n_0\,
      GE => '1',
      Q => p_0_in(1)
    );
save_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => save,
      O => save_IBUF
    );
\seg_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(0),
      O => seg(0)
    );
\seg_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(1),
      O => seg(1)
    );
\seg_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(2),
      O => seg(2)
    );
\seg_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(3),
      O => seg(3)
    );
\seg_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(4),
      O => seg(4)
    );
\seg_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(5),
      O => seg(5)
    );
\seg_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(6),
      O => seg(6)
    );
\selectseg_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => selectseg_OBUF(0),
      O => selectseg(0)
    );
\selectseg_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => selectseg_OBUF(1),
      O => selectseg(1)
    );
\selectseg_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => selectseg_OBUF(2),
      O => selectseg(2)
    );
\selectseg_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => selectseg_OBUF(3),
      O => selectseg(3)
    );
\selectseg_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => selectseg_OBUF(4),
      O => selectseg(4)
    );
\selectseg_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => selectseg_OBUF(5),
      O => selectseg(5)
    );
\selectseg_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => selectseg_OBUF(6),
      O => selectseg(6)
    );
\selectseg_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => selectseg_OBUF(7),
      O => selectseg(7)
    );
stepper1: entity work.stepper
     port map (
      CLK => \blink_BUFG[4]\,
      D(0) => stepper1_n_10,
      E(0) => stepper1_n_9,
      Q(9) => enable,
      Q(8) => direction,
      Q(7 downto 0) => LED_OBUF(7 downto 0),
      add_IBUF => add_IBUF,
      clear_IBUF => clear_IBUF,
      \count_reg[7]\(7 downto 0) => LED_OBUF(15 downto 8),
      m1_dir_OBUF => m1_dir_OBUF,
      m1_step(0) => \blink[4]\,
      m1_step_OBUF => m1_step_OBUF,
      motor_enable(0) => \register2_reg[28]_i_1_n_0\,
      motor_enable_OBUF => motor_enable_OBUF
    );
stepper2: entity work.stepper_0
     port map (
      CLK => \blink_BUFG[4]\,
      D(0) => stepper2_n_2,
      E(0) => stepper2_n_1,
      Q(9 downto 8) => \reg1_motor2__0\(10 downto 9),
      Q(7 downto 0) => \reg1_motor2__0\(7 downto 0),
      add_IBUF => add_IBUF,
      clear_IBUF => clear_IBUF,
      m2_dir_OBUF => m2_dir_OBUF,
      m2_step(0) => \blink[4]\,
      m2_step_OBUF => m2_step_OBUF
    );
\switchnum_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => switchnum(0),
      O => switchnum_IBUF(0)
    );
\switchnum_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => switchnum(1),
      O => switchnum_IBUF(1)
    );
\switchnum_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => switchnum(2),
      O => switchnum_IBUF(2)
    );
\switchnum_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => switchnum(3),
      O => switchnum_IBUF(3)
    );
end STRUCTURE;
