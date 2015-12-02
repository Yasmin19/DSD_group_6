
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name MICHAEL -dir "C:/Users/MicSeltene/Documents/GitHub/DSD_group_6/Lab_5/Lab_5_prep/MICHAEL/planAhead_run_2" -part xc3s500eft256-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "eight_bit_n_bit_register_file_constraint.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {or_gate.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {not_gate.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {and_gate.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {two_input_multiplexer.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {tri_buff.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {D_flipflop.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {register_file_cell.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {three_to_eight_decoder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {n_bit_rfc_register.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {eight_n_bit_register_file.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top eight_n_bit_register_file $srcset
add_files [list {eight_bit_n_bit_register_file_constraint.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500eft256-4
