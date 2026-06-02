##CREATE CLOCK
create_clock [get_ports $clock] -period $CLK_PERIOD

##IO DELAYS

set input_max_delay [expr $IO_DELAY * $CLK_PERIOD]
set input_min_delay [expr $IO_DELAY * $CLK_PERIOD]

set output_max_delay [expr $IO_DELAY * $CLK_PERIOD]
set output_min_delay [expr $IO_DELAY * $CLK_PERIOD]

set_input_delay $input_max_delay -max -clock $clock [all_inputs -no_clocks] -add_delay
set_input_delay $input_min_delay -min -clock $clock [all_inputs -no_clocks] -add_delay

set_output_delay $output_max_delay -max -clock $clock [all_outputs] -add_delay
set_output_delay $output_min_delay -min -clock $clock [all_outputs] -add_delay

set_max_transition $MAX_TRANSITION [current_design]
set_max_transition $MAX_TRANSITION [all_inputs]
set_max_transition $MAX_TRANSITION [all_outputs]

set_max_fanout $MAX_FANOUT [current_design]
set_max_fanout 4  [all_inputs]

set_load -pin_load -max  $OUT_PORT_LOAD [all_outputs]
set_load -pin_load -min  $OUT_PORT_LOAD [all_outputs]

set_input_transition -max $INPUT_TRANSITION [all_inputs]
set_input_transition -min $INPUT_TRANSITION [all_inputs]
 
set_false_path -from [all_inputs -no_clocks]
set_false_path -to [all_outputs]
 