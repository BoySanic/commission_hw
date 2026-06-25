transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xbip_utils_v3_0_15
vlib riviera/mult_gen_v12_0_24
vlib riviera/xil_defaultlib

vmap xbip_utils_v3_0_15 riviera/xbip_utils_v3_0_15
vmap mult_gen_v12_0_24 riviera/mult_gen_v12_0_24
vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xbip_utils_v3_0_15 -93  -incr \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_24 -93  -incr \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../commission_coproc.gen/sources_1/ip/mix1_inverse_multiplier/sim/mix1_inverse_multiplier.vhd" \


