onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib pcie_controller_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {pcie_controller.udo}

run 1000ns

quit -force
