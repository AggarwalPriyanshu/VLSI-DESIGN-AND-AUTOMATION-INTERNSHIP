# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Fri Jun 20 10:43:02 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design mux4to1

group_path -weight 1.000000 -name I2O -from [list \
  [get_ports {in[3]}]  \
  [get_ports {in[2]}]  \
  [get_ports {in[1]}]  \
  [get_ports {in[0]}]  \
  [get_ports {sel[1]}]  \
  [get_ports {sel[0]}] ] -to [get_ports y]
set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
