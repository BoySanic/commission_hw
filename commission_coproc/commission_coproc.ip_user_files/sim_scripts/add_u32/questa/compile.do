vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xbip_utils_v3_0_15
vlib questa_lib/msim/c_reg_fd_v12_0_11
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_7
vlib questa_lib/msim/xbip_pipe_v3_0_11
vlib questa_lib/msim/c_addsub_v12_0_21
vlib questa_lib/msim/xil_defaultlib

vmap xbip_utils_v3_0_15 questa_lib/msim/xbip_utils_v3_0_15
vmap c_reg_fd_v12_0_11 questa_lib/msim/c_reg_fd_v12_0_11
vmap xbip_dsp48_wrapper_v3_0_7 questa_lib/msim/xbip_dsp48_wrapper_v3_0_7
vmap xbip_pipe_v3_0_11 questa_lib/msim/xbip_pipe_v3_0_11
vmap c_addsub_v12_0_21 questa_lib/msim/c_addsub_v12_0_21
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xbip_utils_v3_0_15 -64 -93  \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_11 -64 -93  \
"../../../ipstatic/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_7 -64 -93  \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_11 -64 -93  \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_21 -64 -93  \
"../../../ipstatic/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../../commission_coproc.gen/sources_1/ip/add_u32/sim/add_u32.vhd" \


