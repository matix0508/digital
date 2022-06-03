#!/bin/bash

filename='compile.ys';

input_file = $1;

echo "read_verilog -sv ${input_file}.v" >> $filename;
echo "synth" >> $filename;
echo "dfflibmap -liberty /eda/design_kits/ams_v4.10/liberty/c35_3.3V/c35_CORELIBD_TYP.lib" >> $filename;
echo "abc       -liberty /eda/design_kits/ams_v4.10/liberty/c35_3.3V/c35_CORELIBD_TYP.lib" >> $filename;
echo "opt_clean" >> $filename;

echo "stat -liberty /eda/design_kits/ams_v4.10/liberty/c35_3.3V/c35_CORELIBD_TYP.lib" >> $filename;

echo "write_verilog ${input_file}_synth.v" >> $filename;

yosys $filename

