# Top Level Design Parameters

# Clocks

create_clock -period 6.000000 -waveform {0.000000 3.000000} wb_clk_i
create_clock -period 10.000000 -waveform {0.000000 5.000000} sdram_clk

# False Paths Between Clocks


# False Path Constraints

set_false_path -from {wb_rst_i} -to {*}
set_false_path -from {sdram_resetn} -to {*}

# Maximum Delay Constraints

set_max_transition 0.5 [current_design]
set_max_transition 0.5 [all_inputs]
set_max_transition 0.5 [all_outputs]

set_max_fanout 16 [current_design]
set_max_fanout 4  [all_inputs]

set_load -pin_load -max  0.1 [all_outputs]
set_load -pin_load -min  0.0 [all_outputs]

set_input_transition -max 0.5 [all_inputs]
set_input_transition -min 0.0 [all_inputs]

# Multicycle Constraints


# Virtual Clocks
# Output Load Constraints
# Driving Cell Constraints
# Wire Loads
# set_wire_load_mode top

# Other Constraints
set_input_delay 0.000 -clock {wb_clk_i} {wb_stb_i}
set_output_delay 0.000 -clock {wb_clk_i} {wb_ack_o}
set_input_delay 0.000 -clock {wb_clk_i} [get_ports wb_addr_i*]
set_input_delay 0.000 -clock {wb_clk_i} {wb_we_i}
set_input_delay 0.000 -clock {wb_clk_i} [get_ports wb_dat_i*]
set_input_delay 0.000 -clock {wb_clk_i} [get_ports wb_sel_i*]

set_output_delay 3.000 -clock {wb_clk_i} [get_ports wb_dat_o*]
set_input_delay 0.000 -clock {wb_clk_i} {wb_cyc_i}
set_input_delay 0.000 -clock {wb_clk_i} [get_ports wb_cti_i*]
set_output_delay 5.000 -clock {sdram_clk} {sdr_cs_n}
set_output_delay 5.000 -clock {sdram_clk} {sdr_cke}
set_output_delay 5.000 -clock {sdram_clk} {sdr_ras_n}
set_output_delay 5.000 -clock {sdram_clk} {sdr_cas_n}
set_output_delay 5.000 -clock {sdram_clk} {sdr_we_n}
set_output_delay 5.000 -clock {sdram_clk} {sdr_dqm[0]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_dqm[1]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_ba[0]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_ba[1]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_addr[0]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_addr[1]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_addr[2]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_addr[3]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_addr[4]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_addr[5]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_addr[6]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_addr[7]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_addr[8]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_addr[9]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_addr[10]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_addr[11]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_dq[0]}
set_input_delay 5.000 -clock {sdram_clk} {sdr_dq[0]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_dq[1]}
set_input_delay 5.000 -clock {sdram_clk} {sdr_dq[1]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_dq[2]}
set_input_delay 5.000 -clock {sdram_clk} {sdr_dq[2]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_dq[3]}
set_input_delay 5.000 -clock {sdram_clk} {sdr_dq[3]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_dq[4]}
set_input_delay 5.000 -clock {sdram_clk} {sdr_dq[4]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_dq[5]}
set_input_delay 5.000 -clock {sdram_clk} {sdr_dq[5]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_dq[6]}
set_input_delay 5.000 -clock {sdram_clk} {sdr_dq[6]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_dq[7]}
set_input_delay 5.000 -clock {sdram_clk} {sdr_dq[7]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_dq[8]}
set_input_delay 5.000 -clock {sdram_clk} {sdr_dq[8]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_dq[9]}
set_input_delay 5.000 -clock {sdram_clk} {sdr_dq[9]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_dq[10]}
set_input_delay 5.000 -clock {sdram_clk} {sdr_dq[10]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_dq[11]}
set_input_delay 5.000 -clock {sdram_clk} {sdr_dq[11]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_dq[12]}
set_input_delay 5.000 -clock {sdram_clk} {sdr_dq[12]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_dq[13]}
set_input_delay 5.000 -clock {sdram_clk} {sdr_dq[13]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_dq[14]}
set_input_delay 5.000 -clock {sdram_clk} {sdr_dq[14]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_dq[15]}
set_input_delay 5.000 -clock {sdram_clk} {sdr_dq[15]}
set_output_delay 5.000 -clock {sdram_clk} {sdr_init_done}
