--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: register_file_cell_synthesis.vhd
-- /___/   /\     Timestamp: Tue Dec 01 13:41:03 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm register_file_cell -w -dir netgen/synthesis -ofmt vhdl -sim register_file_cell.ngc register_file_cell_synthesis.vhd 
-- Device	: xc3s500e-4-ft256
-- Input file	: register_file_cell.ngc
-- Output file	: C:\Users\Yasmin\Documents\GitHub\DSD_group_6\Lab_5\Lab_5_prep\register_file_cell + n_bit_rfc_reg\netgen\synthesis\register_file_cell_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: register_file_cell
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity register_file_cell is
  port (
    DIN : in STD_LOGIC := 'X'; 
    OA : out STD_LOGIC; 
    OB : out STD_LOGIC; 
    Clock : in STD_LOGIC := 'X'; 
    WE : in STD_LOGIC := 'X'; 
    REA : in STD_LOGIC := 'X'; 
    REB : in STD_LOGIC := 'X' 
  );
end register_file_cell;

architecture Structure of register_file_cell is
  signal Clock_BUFGP_1 : STD_LOGIC; 
  signal DIN_IBUF_3 : STD_LOGIC; 
  signal G2_D_flipflop_Q_4 : STD_LOGIC; 
  signal G2_D_flipflop_Q_1_5 : STD_LOGIC; 
  signal G3_tri_buff_enable_inv : STD_LOGIC; 
  signal G4_tri_buff_enable_inv : STD_LOGIC; 
  signal REA_IBUF_11 : STD_LOGIC; 
  signal REB_IBUF_13 : STD_LOGIC; 
  signal WE_IBUF_15 : STD_LOGIC; 
begin
  DIN_IBUF : IBUF
    port map (
      I => DIN,
      O => DIN_IBUF_3
    );
  WE_IBUF : IBUF
    port map (
      I => WE,
      O => WE_IBUF_15
    );
  REA_IBUF : IBUF
    port map (
      I => REA,
      O => REA_IBUF_11
    );
  REB_IBUF : IBUF
    port map (
      I => REB,
      O => REB_IBUF_13
    );
  OA_OBUFT : OBUFT
    port map (
      I => G2_D_flipflop_Q_1_5,
      T => G3_tri_buff_enable_inv,
      O => OA
    );
  OB_OBUFT : OBUFT
    port map (
      I => G2_D_flipflop_Q_4,
      T => G4_tri_buff_enable_inv,
      O => OB
    );
  G2_D_flipflop_Q : FDE
    port map (
      C => Clock_BUFGP_1,
      CE => WE_IBUF_15,
      D => DIN_IBUF_3,
      Q => G2_D_flipflop_Q_4
    );
  Clock_BUFGP : BUFGP
    port map (
      I => Clock,
      O => Clock_BUFGP_1
    );
  G4_tri_buff_enable_inv1_INV_0 : INV
    port map (
      I => REB_IBUF_13,
      O => G4_tri_buff_enable_inv
    );
  G3_tri_buff_enable_inv1_INV_0 : INV
    port map (
      I => REA_IBUF_11,
      O => G3_tri_buff_enable_inv
    );
  G2_D_flipflop_Q_1 : FDE
    port map (
      C => Clock_BUFGP_1,
      CE => WE_IBUF_15,
      D => DIN_IBUF_3,
      Q => G2_D_flipflop_Q_1_5
    );

end Structure;

