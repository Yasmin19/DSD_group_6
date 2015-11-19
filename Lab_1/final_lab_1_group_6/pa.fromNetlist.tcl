
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Group_7_Lab_1 -dir "C:/Users/MicSeltene/Documents/DSD/final_lab_1_group_7_project/Group_7_Lab1_v1/planAhead_run_5" -part xc3s500eft256-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/MicSeltene/Documents/DSD/final_lab_1_group_7_project/Group_7_Lab1_v1/inverter_gate.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/MicSeltene/Documents/DSD/final_lab_1_group_7_project/Group_7_Lab1_v1} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "inverter_gate.ucf" [current_fileset -constrset]
add_files [list {inverter_gate.ucf}] -fileset [get_property constrset [current_run]]
link_design
