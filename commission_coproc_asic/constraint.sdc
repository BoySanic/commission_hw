create_clock -name clock -period 25.0000 [get_ports clock]

set_clock_uncertainty -hold 0.3500 [get_clocks clock]


set_false_path -from [get_ports reset*]
set_false_path -from [get_ports rst*]

set_input_delay -clock clock 2.0 [all_inputs]
set_output_delay -clock clock 2.0 [all_outputs]

set_false_path -from [all_inputs] -to [get_ports reset*]
