
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Lab_4 -dir "C:/Users/MicSeltene/Documents/Projects/Digital_Circuit_Design/Lab_4/planAhead_run_2" -part xc3s500eft256-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/MicSeltene/Documents/Projects/Digital_Circuit_Design/Lab_4/modulo_m_counter_with_synchronous_reset.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/MicSeltene/Documents/Projects/Digital_Circuit_Design/Lab_4} }
set_property target_constrs_file "modulo_m_counter_with_synchronous_reset_constraint.ucf" [current_fileset -constrset]
add_files [list {modulo_m_counter_with_synchronous_reset_constraint.ucf}] -fileset [get_property constrset [current_run]]
link_design
