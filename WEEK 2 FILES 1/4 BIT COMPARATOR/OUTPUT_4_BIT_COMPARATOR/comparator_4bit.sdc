# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Fri Jun 20 10:18:38 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design comparator_4bit

group_path -weight 1.000000 -name I2O -from [list \
  [get_ports {a[3]}]  \
  [get_ports {a[2]}]  \
  [get_ports {a[1]}]  \
  [get_ports {a[0]}]  \
  [get_ports {b[3]}]  \
  [get_ports {b[2]}]  \
  [get_ports {b[1]}]  \
  [get_ports {b[0]}] ] -to [list \
  [get_ports gt]  \
  [get_ports lt]  \
  [get_ports eq] ]
set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
