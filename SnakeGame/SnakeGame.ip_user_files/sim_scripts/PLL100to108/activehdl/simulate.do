transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+PLL100to108  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.PLL100to108 xil_defaultlib.glbl

do {PLL100to108.udo}

run 1000ns

endsim

quit -force
