SetActiveLib -work
comp -include "$DSN\src\MultiplicationArr.vhd" 
comp -include "$DSN\src\TestBench\multiarr_ent_TB.vhd" 
asim TESTBENCH_FOR_multiarr_ent 
wave 
wave -noreg m
wave -noreg q
wave -noreg ppi
wave -noreg ci
wave -noreg po
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\multiarr_ent_TB_tim_cfg.vhd" 
# asim TIMING_FOR_multiarr_ent 
