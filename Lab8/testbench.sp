**inv**
.INC'circuit.spi'
.GLOBAL gnd
+ vdd


.protect
.lib'~/VLSI/cic018.l'TT
.unprotect

.op
.options post
.tran 0.05n 160n
.temp 25

xinv Vin out_1 VDD GND   inv
xnand A B VDD GND out_2 nand
xnor  C D VDD GND out_3 nor


v1 vdd 0v DC 1.8v
v2 gnd 0v DC 0v

v3 Vin 0v pulse(0v 1.8v 0 0.1n 0.1n 20n 40n)
v4 A   0v pulse(0v 1.8v 0 0.1n 0.1n 20n 40n)
v5 B   0v pulse(0v 1.8v 0 0.1n 0.1n 40n 80n)
v6 C   0v pulse(0v 1.8v 0 0.1n 0.1n 20n 40n)
v7 D   0v pulse(0v 1.8v 0 0.1n 0.1n 40n 80n)


.end

