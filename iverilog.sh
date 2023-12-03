#!/bin/sh
iverilog -g 2012 -o counter -s sim_counter counter.sv tb_counter.sv
./counter
gtkwave tb_counter.vcd
