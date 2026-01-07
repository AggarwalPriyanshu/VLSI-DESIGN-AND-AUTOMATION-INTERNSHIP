# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Fri Jun 20 10:40:28 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design jk_ff

group_path -weight 1.000000 -name C2C -from [get_cells q_reg] -to [get_cells q_reg]
group_path -weight 1.000000 -name C2O -from [get_cells q_reg] -to [get_ports q]
group_path -weight 1.000000 -name I2C -from [list \
  [get_ports j]  \
  [get_ports k]  \
  [get_ports clk]  \
  [get_ports rst] ] -to [get_cells q_reg]
group_path -weight 1.000000 -name I2O -from [list \
  [get_ports j]  \
  [get_ports k]  \
  [get_ports clk]  \
  [get_ports rst] ] -to [get_ports q]
set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
