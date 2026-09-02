create_clock -name clock -period 25.0000 [get_ports clock]

# Uncertainty magnitudes are INVERSELY related to how hard the resizer works:
#   * larger -setup  => tighter setup => more setup fixing
#   * larger -hold   => tighter hold   => more hold-fix delay buffers
# DPL-0036 ("Detailed placement failed") comes from repair_timing -hold
# inserting so many delay buffers that local density overflows. The design is
# latency-matched with long FF->FF staging chains, so it genuinely has plenty
# of timing slack; declare small uncertainties so the resizer does not chase
# phantom violations and bloat placement.

# Small setup uncertainty: 25ns period vs ~4ns critical path leaves huge
# margin, so the resizer has almost nothing to fix on setup.
set_clock_uncertainty -setup 0.0500 [get_clocks clock]

# SMALL hold uncertainty. Raising this value makes hold stricter and causes the
# resizer to insert MORE delay buffers (the root of DPL-0036). Keep it tiny so
# only genuinely short/skewed paths get hold-fixed. Non-zero keeps a little
# physical guard for a real tape-out.
set_clock_uncertainty -hold 0.0500 [get_clocks clock]

set_false_path -from [get_ports reset*]

set_input_delay -max 1.0 -clock clock [all_inputs]
set_output_delay -max 1.0 -clock clock [all_outputs]
set_input_delay -min 0.4 -clock clock [all_inputs]
set_output_delay -min 0.4 -clock clock [all_outputs]