vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xbip_utils_v3_0_15
vlib questa_lib/msim/mult_gen_v12_0_24
vlib questa_lib/msim/xil_defaultlib

vmap xbip_utils_v3_0_15 questa_lib/msim/xbip_utils_v3_0_15
vmap mult_gen_v12_0_24 questa_lib/msim/mult_gen_v12_0_24
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xbip_utils_v3_0_15 -64 -93  \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_24 -64 -93  \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../../commission_coproc.gen/sources_1/ip/mix2_multiplier/sim/mix2_multiplier.vhd" \


