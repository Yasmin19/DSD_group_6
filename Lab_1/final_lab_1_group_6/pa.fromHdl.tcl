
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Group_7_Lab_1 -dir "C:/Users/MicSeltene/Documents/DSD/final_lab_1_group_7_project/Group_7_Lab1_v1/planAhead_run_1" -part xc3s500eft256-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "two_input_multiplexer.ucf" [current_fileset -constrset]
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
set_property top two_input_multiplexer $srcset
add_files [list {two_input_multiplexer.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500eft256-4
