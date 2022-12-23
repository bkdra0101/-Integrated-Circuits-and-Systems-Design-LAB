
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name ktra -dir "E:/ic/ktra/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "counter_ud.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {CounterUD.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Clock_div.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {counter_ud.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top counter_ud $srcset
add_files [list {counter_ud.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
