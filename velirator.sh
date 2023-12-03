#!/bin/sh
verilator -sv -cc counter.sv;
verilator --cc counter.sv -exe tb_counter.cpp;
make -C obj_dir -f Vcounter.mk
./obj_dir/Vcounter;
