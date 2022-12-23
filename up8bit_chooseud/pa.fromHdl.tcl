
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name up8bit_chooseud -dir "E:/ic/up8bit_chooseud/planAhead_run_3" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "LED_COUNTER.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Mux41.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {CounterUD.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Clock_div.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {LED_COUNTER.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top LED_COUNTER $srcset
add_files [list {LED_COUNTER.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
