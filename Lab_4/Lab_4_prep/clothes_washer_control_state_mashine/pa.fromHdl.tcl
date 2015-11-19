
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name clothes_washer_control_state_mashine -dir "C:/Users/MicSeltene/Desktop/ec12027-E21501471/Lab_4_prep/clothes_washer_control_state_mashine/planAhead_run_1" -part xc3s500eft256-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "washer_controller.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {or_gate.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {not_gate.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {D_flipflop.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {and_gate.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {washer_output_logic.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {washer_next_state_logic.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {two_input_multiplexer.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {n_bit_register.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {washer_controller.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top washer_controller $srcset
add_files [list {washer_controller.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500eft256-4
