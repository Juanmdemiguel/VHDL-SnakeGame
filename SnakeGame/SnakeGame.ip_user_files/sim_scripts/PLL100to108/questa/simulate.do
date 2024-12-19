onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib PLL100to108_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {PLL100to108.udo}

run 1000ns

quit -force
