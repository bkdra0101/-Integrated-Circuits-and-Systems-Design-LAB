
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name finite_state_machine -dir "E:/ic/finite_state_machine/planAhead_run_3" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "simple.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {simple.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top simple $srcset
add_files [list {simple.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
