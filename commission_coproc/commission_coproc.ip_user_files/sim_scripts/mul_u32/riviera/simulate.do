transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+mul_u32  -L xil_defaultlib -L xbip_utils_v3_0_15 -L mult_gen_v12_0_24 -L secureip -O5 xil_defaultlib.mul_u32

do {mul_u32.udo}

run 1000ns

endsim

quit -force
