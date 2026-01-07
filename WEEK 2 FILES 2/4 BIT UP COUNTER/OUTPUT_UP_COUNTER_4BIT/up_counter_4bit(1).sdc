# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Fri Jun 20 10:46:55 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design up_counter_4bit

group_path -weight 1.000000 -name C2C -from [list \
  [get_cells {count_reg[3]}]  \
  [get_cells {count_reg[2]}]  \
  [get_cells {count_reg[1]}]  \
  [get_cells {count_reg[0]}] ] -to [list \
  [get_cells {count_reg[3]}]  \
  [get_cells {count_reg[2]}]  \
  [get_cells {count_reg[1]}]  \
  [get_cells {count_reg[0]}] ]
group_path -weight 1.000000 -name C2O -from [list \
  [get_cells {count_reg[3]}]  \
  [get_cells {count_reg[2]}]  \
  [get_cells {count_reg[1]}]  \
  [get_cells {count_reg[0]}] ] -to [list \
  [get_ports {count[3]}]  \
  [get_ports {count[2]}]  \
  [get_ports {count[1]}]  \
  [get_ports {count[0]}] ]
group_path -weight 1.000000 -name I2C -from [list \
  [get_ports clk]  \
  [get_ports rst] ] -to [list \
  [get_cells {count_reg[3]}]  \
  [get_cells {count_reg[2]}]  \
  [get_cells {count_reg[1]}]  \
  [get_cells {count_reg[0]}] ]
group_path -weight 1.000000 -name I2O -from [list \
  [get_ports clk]  \
  [get_ports rst] ] -to [list \
  [get_ports {count[3]}]  \
  [get_ports {count[2]}]  \
  [get_ports {count[1]}]  \
  [get_ports {count[0]}] ]
set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
