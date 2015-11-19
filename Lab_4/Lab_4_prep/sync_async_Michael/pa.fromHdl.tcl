
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Lab_4 -dir "C:/Users/MicSeltene/Documents/Projects/Digital_Circuit_Design/Lab_4/planAhead_run_2" -part xc3s500eft256-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "modulo_m_counter_with_synchronous_reset_constraint.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {xor_gate.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {and_gate.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {two_input_multiplexer.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {half_adder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {D_flipflop.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {n_bit_two_input_mux.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {n_bit_register.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {n_bit_incrementer.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {n_bit_synchronous_counter_with_parallel_load.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {eight_bit_comparator.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {modulo_m_counter_with_synchronous_reset.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top modulo_m_counter_with_synchronous_reset $srcset
add_files [list {modulo_m_counter_with_synchronous_reset_constraint.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500eft256-4
