create_clock -name clock -period 25.0000 [get_ports clock]

set_clock_uncertainty -hold 0.3000 [get_clocks clock]

set_input_delay -clock clock 2.0 [all_inputs]
set_output_delay -clock clock 2.0 [all_outputs]
