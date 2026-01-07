set_units -time 1.0ns;
set_units -capacitance 1.0pF;
create_clock -name clk -period 10.0 -waveform "0 5.0" [get_ports clk]
set_clock_uncertainty 0.200 [get_clocks clk]
set_clock_transition -rise -min 0.20 [get_clocks clk]
set_clock_transition -rise -max 0.25 [get_clocks clk]
set_clock_transition -fall -min 0.20 [get_clocks clk]
set_clock_transition -fall -max 0.25 [get_clocks clk]

set_input_delay -clock [get_clocks clk] -add_delay 0.3 [get_ports read_en] 
set_input_delay -clock [get_clocks clk] -add_delay 0.3 [get_ports write_en] 
set_input_delay -clock [get_clocks clk] -add_delay 0.3 [get_ports addr] 
set_input_delay -clock [get_clocks clk] -add_delay 0.3 [get_ports data_in] 
set_output_delay -clock [get_clocks clk] -add_delay 0.3 [get_ports data_out]

set_max_capacitance 0.5 [all_outputs]

set_max_fanout 10 [all_inputs]
