yosys -import

set library_file ./cmos_cells.lib

read_verilog -sv <my_file_name>

synth

dfflibmap -liberty $library_file
abc       -liberty $library_file
opt_clean

stat -liberty $library_file

write_verilog cmos_synth.v
