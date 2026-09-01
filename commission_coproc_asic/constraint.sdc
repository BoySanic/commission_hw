create_clock -name clock -period 25.0000 [get_ports clock]

set_clock_uncertainty -hold 0.1800 [get_clocks clock]

set_false_path -from [get_ports reset*]


set_input_delay -max 1.0 -clock clock [all_inputs]
set_output_delay -max 1.0 -clock clock [all_outputs]

set_input_delay -min 0.4 -clock clock [all_inputs]
set_output_delay -min 0.4 -clock clock [all_outputs]
