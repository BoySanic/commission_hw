onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xil_defaultlib -L xbip_utils_v3_0_15 -L mult_gen_v12_0_24 -L secureip -lib xil_defaultlib xil_defaultlib.mix1_inverse_multiplier

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {mix1_inverse_multiplier.udo}

run 1000ns

quit -force
