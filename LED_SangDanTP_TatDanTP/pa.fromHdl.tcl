
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name LED_SangDanTP_TatDanTP -dir "E:/ic/LED_SangDanTP_TatDanTP/planAhead_run_2" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "ShiftRegiter.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Shift_SIPO.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Clock_1Hz.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ShiftRegiter.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top ShiftRegiter $srcset
add_files [list {ShiftRegiter.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
