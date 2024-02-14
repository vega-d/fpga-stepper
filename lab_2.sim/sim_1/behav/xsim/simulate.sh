#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2023.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Wed Feb 14 17:57:16 CET 2024
# SW Build 4029153 on Fri Oct 13 20:13:54 MDT 2023
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim cfg_tb_compare_2bit_behav -key {Behavioral:sim_1:Functional:cfg_tb_compare_2bit} -tclbatch cfg_tb_compare_2bit.tcl -log simulate.log"
xsim cfg_tb_compare_2bit_behav -key {Behavioral:sim_1:Functional:cfg_tb_compare_2bit} -tclbatch cfg_tb_compare_2bit.tcl -log simulate.log
