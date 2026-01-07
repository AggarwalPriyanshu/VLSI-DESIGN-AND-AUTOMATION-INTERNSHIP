create_ccopt_clock_tree -name clk -source clk -no_skew_group
add_ndr -width {Metal1 0.12 Metal2 0.14 Metal3 0.14 Metal4 0.14 Metal5 0.14 Metal6 0.14} -spacing {Metal1 0.12 Metal2 0.14 Metal3 0.14 Metal4 0.14 Metal5 0.14 Metal6 0.14} -name 3w7s
create_route_type -name clkroute5 -non_default_rule 3w7s -bottom_preferred_layer Metal5 -top_preferred_layer Metal6
set_ccopt_property route_type clkroute5 -net_type trunk
set_ccopt_property route_type clkroute5 -net_type leaf
set buf_cells [dbGet [dbGet head.libCells.isBuffer 1 -p].name]
set inv_cells [dbGet [dbGet head.libCells.isInverter 1 -p].name]
set_ccopt_property buffer_cells $buf_cells
set_ccopt_property inverter_cells $inv_cells
create_ccopt_clock_tree_spec -file ccopt.spec
