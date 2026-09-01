create_clock -name clock -period 25.0000 [get_ports clock]

set_clock_uncertainty -hold 0.1500 [get_clocks clock]

set_false_path -from [get_ports reset*]

set_input_delay -clock clock 1.0 [remove_from_collection [all_inputs] [get_ports {clock reset*}]]
set_output_delay -clock clock 1.0 [all_outputs]

