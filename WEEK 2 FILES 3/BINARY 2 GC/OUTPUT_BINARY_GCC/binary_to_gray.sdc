# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Fri Jun 20 10:27:28 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design binary_to_gray

group_path -weight 1.000000 -name I2O -from [list \
  [get_ports {bin[3]}]  \
  [get_ports {bin[2]}]  \
  [get_ports {bin[1]}]  \
  [get_ports {bin[0]}] ] -to [list \
  [get_ports {gray[3]}]  \
  [get_ports {gray[2]}]  \
  [get_ports {gray[1]}]  \
  [get_ports {gray[0]}] ]
set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
