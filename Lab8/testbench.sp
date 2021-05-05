**inv**
INC'circuit.spi'
.GLOBAL gnd
+ vdd


.protect
.lib '~/VLSI/cic018.l'
.unprotect

.op
.options post

.tran 0.05n 25n
.temp 25

xinv Vin Vout VDD GND inv

v1 vdd 0v DC 1.8v
v2 gnd 0v DC 0v

v3 Vin 0 pulse(0 1.8 0.1n 0.1n 0.1n 0.5n 1.2n)
.end

