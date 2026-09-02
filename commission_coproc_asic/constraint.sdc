create_clock -name clock -period 25.0000 [get_ports clock]

# Setup margin: 25ns clock is comfortable for this design; keep a small
# setup uncertainty so the resizer does not chase non-issues.
set_clock_uncertainty -setup 0.2500 [get_clocks clock]

# Hold margin: this design is heavily dominated by short FF->FF staging paths
# (the latency-matched pipelines). Post-CTS repair_timing -hold was inserting
# tens of thousands of delay buffers to fix hold, overflowing local density and
# failing detailed placement (DPL-0036). Declaring reasonable hold budget here
# sharply reduces the number of paths the resizer considers violating, so it
# inserts far fewer buffers. Tune 0.5 up toward 1.0 if DPL-0036 still occurs.
set_clock_uncertainty -hold 0.5000 [get_clocks clock]

set_false_path -from [get_ports reset*]

set_input_delay -max 1.0 -clock clock [all_inputs]
set_output_delay -max 1.0 -clock clock [all_outputs]
set_input_delay -min 0.4 -clock clock [all_inputs]
set_output_delay -min 0.4 -clock clock [all_outputs]