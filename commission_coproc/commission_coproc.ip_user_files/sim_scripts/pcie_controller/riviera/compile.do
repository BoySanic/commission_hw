transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../../../../.vivado/2025.2/data/rsb/busdef" -l xpm -l xil_defaultlib \
"/home/boysanic/.vivado/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/boysanic/.vivado/2025.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/home/boysanic/.vivado/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../.vivado/2025.2/data/rsb/busdef" -l xpm -l xil_defaultlib \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_pipe_eq.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_pipe_drp.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_pipe_rate.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_pipe_reset.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_pipe_sync.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_gtp_pipe_rate.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_gtp_pipe_drp.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_gtp_pipe_reset.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_pipe_user.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_pipe_wrapper.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_qpll_drp.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_qpll_reset.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_qpll_wrapper.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_rxeq_scan.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_pcie_top.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_core_top.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_axi_basic_rx_null_gen.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_axi_basic_rx_pipeline.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_axi_basic_rx.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_axi_basic_top.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_axi_basic_tx_pipeline.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_axi_basic_tx_thrtl_ctl.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_axi_basic_tx.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_pcie_7x.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_pcie_bram_7x.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_pcie_bram_top_7x.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_pcie_brams_7x.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_pcie_pipe_lane.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_pcie_pipe_misc.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_pcie_pipe_pipeline.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_gt_top.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_gt_common.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_gtp_cpllpd_ovrd.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_gtx_cpllpd_ovrd.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_gt_rx_valid_filter_7x.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_gt_wrapper.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/source/pcie_controller_pcie2_top.v" \
"../../../../commission_coproc.gen/sources_1/ip/pcie_controller/sim/pcie_controller.v" \

vlog -work xil_defaultlib \
"glbl.v"

