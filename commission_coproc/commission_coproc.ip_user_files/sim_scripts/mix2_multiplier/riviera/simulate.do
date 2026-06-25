transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+mix2_multiplier  -L xil_defaultlib -L xbip_utils_v3_0_15 -L mult_gen_v12_0_24 -L secureip -O5 xil_defaultlib.mix2_multiplier

do {mix2_multiplier.udo}

run 1000ns

endsim

quit -force
