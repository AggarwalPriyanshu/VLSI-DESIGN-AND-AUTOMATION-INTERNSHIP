# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Fri Jun 20 10:50:47 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design traffic_light_ctrl

group_path -weight 1.000000 -name C2C -from [list \
  [get_cells {light_reg[1]}]  \
  [get_cells walk_reg]  \
  [get_cells {light_reg[0]}]  \
  [get_cells {timer_reg[3]}]  \
  [get_cells {timer_reg[0]}]  \
  [get_cells {timer_reg[1]}]  \
  [get_cells {timer_reg[2]}] ] -to [list \
  [get_cells {light_reg[1]}]  \
  [get_cells walk_reg]  \
  [get_cells {light_reg[0]}]  \
  [get_cells {timer_reg[3]}]  \
  [get_cells {timer_reg[0]}]  \
  [get_cells {timer_reg[1]}]  \
  [get_cells {timer_reg[2]}] ]
group_path -weight 1.000000 -name C2O -from [list \
  [get_cells {light_reg[1]}]  \
  [get_cells walk_reg]  \
  [get_cells {light_reg[0]}]  \
  [get_cells {timer_reg[3]}]  \
  [get_cells {timer_reg[0]}]  \
  [get_cells {timer_reg[1]}]  \
  [get_cells {timer_reg[2]}] ] -to [list \
  [get_ports {light[1]}]  \
  [get_ports {light[0]}]  \
  [get_ports walk] ]
group_path -weight 1.000000 -name I2C -from [list \
  [get_ports clk]  \
  [get_ports rst]  \
  [get_ports ped] ] -to [list \
  [get_cells {light_reg[1]}]  \
  [get_cells walk_reg]  \
  [get_cells {light_reg[0]}]  \
  [get_cells {timer_reg[3]}]  \
  [get_cells {timer_reg[0]}]  \
  [get_cells {timer_reg[1]}]  \
  [get_cells {timer_reg[2]}] ]
group_path -weight 1.000000 -name I2O -from [list \
  [get_ports clk]  \
  [get_ports rst]  \
  [get_ports ped] ] -to [list \
  [get_ports {light[1]}]  \
  [get_ports {light[0]}]  \
  [get_ports walk] ]
set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
