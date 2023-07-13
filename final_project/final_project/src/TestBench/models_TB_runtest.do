SetActiveLib -work
comp -include "$dsn\src\models.vhd" 
comp -include "$dsn\src\TestBench\models_TB.vhd" 
asim +access +r TESTBENCH_FOR_models 
wave 
wave -noreg clk
wave -noreg reset
wave -noreg start
wave -noreg paddle1_y
wave -noreg paddle2_y
wave -noreg ball_x
wave -noreg ball_y
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\models_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_models 
