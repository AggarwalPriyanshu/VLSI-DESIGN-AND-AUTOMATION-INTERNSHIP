# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Fri Jun 20 10:36:49 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design full_adder

group_path -weight 1.000000 -name I2O -from [list \
  [get_ports a]  \
  [get_ports b]  \
  [get_ports cin] ] -to [list \
  [get_ports sum]  \
  [get_ports cout] ]
set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
