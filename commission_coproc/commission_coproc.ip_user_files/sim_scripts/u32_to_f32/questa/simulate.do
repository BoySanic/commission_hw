onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib u32_to_f32_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {u32_to_f32.udo}

run 1000ns

quit -force
