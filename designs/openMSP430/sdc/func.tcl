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

set_max_transition 0.5 [current_design]
set_max_transition 0.5 [all_inputs]
set_max_transition 0.5 [all_outputs]

set_max_fanout 16 [current_design]
set_max_fanout 4  [all_inputs]

set_load -pin_load -max  0.1 [all_outputs]
set_load -pin_load -min  0.0 [all_outputs]

set_input_transition -max 0.5 [all_inputs]
set_input_transition -min 0.0 [all_inputs]
 