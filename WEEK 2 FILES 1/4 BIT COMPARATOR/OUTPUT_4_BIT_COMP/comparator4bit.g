######################################################################

# Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Thu Jun 19 11:16:16 IST 2025

# This file contains the Genus script for /designs/comparator4bit

######################################################################

::legacy::set_attribute -quiet information_level 7 /
::legacy::set_attribute -quiet init_lib_search_path /home/user/Desktop/PRIYANSHU_VLSI_SUMMER/genus/library /
::legacy::set_attribute -quiet common_ui false /
::legacy::set_attribute -quiet design_mode_process no_value /
::legacy::set_attribute -quiet phys_assume_met_fill 0.0 /
::legacy::set_attribute -quiet map_placed_for_hum false /
::legacy::set_attribute -quiet phys_use_invs_extraction true /
::legacy::set_attribute -quiet phys_route_time_out 120.0 /
::legacy::set_attribute -quiet capacitance_per_unit_length_mmmc {} /
::legacy::set_attribute -quiet resistance_per_unit_length_mmmc {} /
::legacy::set_attribute -quiet runtime_by_stage { {to_generic 0 24 0 4}  {first_condense 0 24 0 4}  {second_condense 0 24 0 5}  {reify 0 24 0 5}  {global_incr_map 0 24 0 5}  {incr_opt 0 25 0 5} } /
::legacy::set_attribute -quiet timing_adjust_tns_of_complex_flops false /
::legacy::set_attribute -quiet tinfo_tstamp_file .rs_user.tstamp /
::legacy::set_attribute -quiet flow_metrics_snapshot_uuid 7b25abd2-4518-485c-8410-b62baccc292c /
::legacy::set_attribute -quiet phys_use_segment_parasitics true /
::legacy::set_attribute -quiet probabilistic_extraction true /
::legacy::set_attribute -quiet ple_correlation_factors {1.9000 2.0000} /
::legacy::set_attribute -quiet maximum_interval_of_vias inf /
::legacy::set_attribute -quiet layer_aware_buffer true /
::legacy::set_attribute -quiet interconnect_mode wireload /
::legacy::set_attribute -quiet wireload_mode enclosed /
::legacy::set_attribute -quiet wireload_selection none /
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/fast/operating_conditions/fast
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/fast/operating_conditions/_nominal_
# BEGIN MSV SECTION
# END MSV SECTION
define_cost_group -design /designs/comparator4bit -name I2O
path_group -paths [specify_paths -from {{/designs/comparator4bit/ports_in/a[3]} {/designs/comparator4bit/ports_in/a[2]} {/designs/comparator4bit/ports_in/a[1]} {/designs/comparator4bit/ports_in/a[0]} {/designs/comparator4bit/ports_in/b[3]} {/designs/comparator4bit/ports_in/b[2]} {/designs/comparator4bit/ports_in/b[1]} {/designs/comparator4bit/ports_in/b[0]}} -to {/designs/comparator4bit/ports_out/gt /designs/comparator4bit/ports_out/eq /designs/comparator4bit/ports_out/lt}]  -name I2O -group /designs/comparator4bit/timing/cost_groups/I2O
# BEGIN DFT SECTION
::legacy::set_attribute -quiet dft_scan_style muxed_scan /
::legacy::set_attribute -quiet dft_scanbit_waveform_analysis false /
# END DFT SECTION
::legacy::set_attribute -quiet seq_reason_deleted_internal {} /designs/comparator4bit
::legacy::set_attribute -quiet qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 0} {cell_count 58} {utilization  0.00} {runtime 0 24 0 4} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 0} {cell_count 35} {utilization  0.00} {runtime 0 24 0 5} }{second_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 0} {cell_count 35} {utilization  0.00} {runtime 0 24 0 5} }{reify {wns 214748365} {tns 0} {vep 0} {area 0} {cell_count 30} {utilization  0.00} {runtime 0 24 0 5} }{global_incr_map {wns 214748365} {tns 0} {vep 0} {area 0} {cell_count 30} {utilization  0.00} {runtime 0 24 0 5} }{incr_opt {wns 214748365} {tns 0} {vep 0} {area 0} {cell_count 26} {utilization  0.00} {runtime 0 25 0 5} }} /designs/comparator4bit
::legacy::set_attribute -quiet seq_mbci_coverage 0.0 /designs/comparator4bit
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {/home/user/Desktop/PRIYANSHU_VLSI_SUMMER/genus/verilog/4_BIT_COMP.v} {/home/user/Desktop/PRIYANSHU_VLSI_SUMMER/genus/verilog} {}}} /designs/comparator4bit
::legacy::set_attribute -quiet hdl_user_name comparator4bit /designs/comparator4bit
::legacy::set_attribute -quiet verification_directory fv/comparator4bit /designs/comparator4bit
::legacy::set_attribute -quiet arch_filename /home/user/Desktop/PRIYANSHU_VLSI_SUMMER/genus/verilog/4_BIT_COMP.v /designs/comparator4bit
::legacy::set_attribute -quiet entity_filename /home/user/Desktop/PRIYANSHU_VLSI_SUMMER/genus/verilog/4_BIT_COMP.v /designs/comparator4bit
::legacy::set_attribute -quiet original_name {a[3]} {/designs/comparator4bit/ports_in/a[3]}
::legacy::set_attribute -quiet original_name {a[2]} {/designs/comparator4bit/ports_in/a[2]}
::legacy::set_attribute -quiet original_name {a[1]} {/designs/comparator4bit/ports_in/a[1]}
::legacy::set_attribute -quiet original_name {a[0]} {/designs/comparator4bit/ports_in/a[0]}
::legacy::set_attribute -quiet original_name {b[3]} {/designs/comparator4bit/ports_in/b[3]}
::legacy::set_attribute -quiet original_name {b[2]} {/designs/comparator4bit/ports_in/b[2]}
::legacy::set_attribute -quiet original_name {b[1]} {/designs/comparator4bit/ports_in/b[1]}
::legacy::set_attribute -quiet original_name {b[0]} {/designs/comparator4bit/ports_in/b[0]}
::legacy::set_attribute -quiet original_name gt /designs/comparator4bit/ports_out/gt
::legacy::set_attribute -quiet original_name eq /designs/comparator4bit/ports_out/eq
::legacy::set_attribute -quiet original_name lt /designs/comparator4bit/ports_out/lt
# BEGIN PMBIST SECTION
# END PMBIST SECTION
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 20.11-s111_1
## flowkit v20.10-p027_1
## Written on 11:16:16 19-Jun 2025
#############################################################
#####   Flow Definitions   ##################################

#############################################################
#####   Step Definitions   ##################################


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_end_steps -obj_type root]} {set_flowkit_db flow_edit_end_steps {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_flowkit_db flow_edit_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_flowkit_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_flowkit_db flow_header_tcl {}}
if {[is_attribute flow_metadata -obj_type root]} {set_flowkit_db flow_metadata {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_flowkit_db flow_setup_config {HUDDLE {!!map {}}}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_flowkit_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_flowkit_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_flowkit_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_flowkit_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_flowkit_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_flowkit_db flow_template_feature_definition {}}
if {[is_attribute flow_template_type -obj_type root]} {set_flowkit_db flow_template_type {}}
if {[is_attribute flow_template_tools -obj_type root]} {set_flowkit_db flow_template_tools {}}
if {[is_attribute flow_template_version -obj_type root]} {set_flowkit_db flow_template_version {}}
if {[is_attribute flow_user_templates -obj_type root]} {set_flowkit_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_user_templates -obj_type root]} {set_flowkit_db flow_user_templates {}}
if {[is_attribute flow_plugin_steps -obj_type root]} {set_flowkit_db flow_plugin_steps {}}
if {[is_attribute flow_template_type -obj_type root]} {set_flowkit_db flow_template_type {}}
if {[is_attribute flow_template_tools -obj_type root]} {set_flowkit_db flow_template_tools {}}
if {[is_attribute flow_template_version -obj_type root]} {set_flowkit_db flow_template_version {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_flowkit_db flow_template_feature_definition {}}
if {[is_attribute flow_remark -obj_type root]} {set_flowkit_db flow_remark {}}
if {[is_attribute flow_features -obj_type root]} {set_flowkit_db flow_features {}}
if {[is_attribute flow_feature_values -obj_type root]} {set_flowkit_db flow_feature_values {}}
if {[is_attribute flow_write_db_args -obj_type root]} {set_flowkit_db flow_write_db_args {}}
if {[is_attribute flow_write_db_sdc -obj_type root]} {set_flowkit_db flow_write_db_sdc true}
if {[is_attribute flow_post_db_overwrite -obj_type root]} {set_flowkit_db flow_post_db_overwrite {}}
if {[is_attribute flow_step_order -obj_type root]} {set_flowkit_db flow_step_order {}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_flowkit_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_flowkit_db flow_step_end_tcl {}}
if {[is_attribute flow_step_last -obj_type root]} {set_flowkit_db flow_step_last {}}
if {[is_attribute flow_step_current -obj_type root]} {set_flowkit_db flow_step_current {}}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_flowkit_db flow_step_canonical_current {}}
if {[is_attribute flow_step_next -obj_type root]} {set_flowkit_db flow_step_next {}}
if {[is_attribute flow_working_directory -obj_type root]} {set_flowkit_db flow_working_directory .}
if {[is_attribute flow_branch -obj_type root]} {set_flowkit_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_flowkit_db flow_caller_data {}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_flowkit_db flow_metrics_snapshot_uuid 7b25abd2-4518-485c-8410-b62baccc292c}
if {[is_attribute flow_starting_db -obj_type root]} {set_flowkit_db flow_starting_db {}}
if {[is_attribute flow_db_directory -obj_type root]} {set_flowkit_db flow_db_directory dbs}
if {[is_attribute flow_report_directory -obj_type root]} {set_flowkit_db flow_report_directory reports}
if {[is_attribute flow_log_directory -obj_type root]} {set_flowkit_db flow_log_directory logs}
if {[is_attribute flow_mail_to -obj_type root]} {set_flowkit_db flow_mail_to {}}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_flowkit_db flow_exit_when_done false}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_flowkit_db flow_mail_on_error false}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_flowkit_db flow_summary_tcl {}}
if {[is_attribute flow_history -obj_type root]} {set_flowkit_db flow_history {}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_flowkit_db flow_step_last_status not_run}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_flowkit_db flow_step_last_msg {}}
if {[is_attribute flow_run_tag -obj_type root]} {set_flowkit_db flow_run_tag {}}
if {[is_attribute flow_current_cache -obj_type root]} {set_flowkit_db flow_current_cache {}}
if {[is_attribute flow_step_order_cache -obj_type root]} {set_flowkit_db flow_step_order_cache {}}
if {[is_attribute flow_step_results_cache -obj_type root]} {set_flowkit_db flow_step_results_cache {}}
if {[is_attribute flow_metadata -obj_type root]} {set_flowkit_db flow_metadata {}}
if {[is_attribute flow_execute_in_global -obj_type root]} {set_flowkit_db flow_execute_in_global true}
if {[is_attribute flow_overwrite_db -obj_type root]} {set_flowkit_db flow_overwrite_db false}
if {[is_attribute flow_print_run_information -obj_type root]} {set_flowkit_db flow_print_run_information false}
if {[is_attribute flow_verbose -obj_type root]} {set_flowkit_db flow_verbose true}
if {[is_attribute flow_print_run_information_full -obj_type root]} {set_flowkit_db flow_print_run_information_full false}
if {[is_attribute flow_header_tcl -obj_type root]} {set_flowkit_db flow_header_tcl {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_flowkit_db flow_footer_tcl {}}
if {[is_attribute flow_init_header_tcl -obj_type root]} {set_flowkit_db flow_init_header_tcl {}}
if {[is_attribute flow_init_footer_tcl -obj_type root]} {set_flowkit_db flow_init_footer_tcl {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_flowkit_db flow_edit_start_steps {}}
if {[is_attribute flow_edit_end_steps -obj_type root]} {set_flowkit_db flow_edit_end_steps {}}
if {[is_attribute flow_step_last_number -obj_type root]} {set_flowkit_db flow_step_last_number 0}
if {[is_attribute flow_autoload_applets -obj_type root]} {set_flowkit_db flow_autoload_applets false}
if {[is_attribute flow_autoload_dir -obj_type root]} {set_flowkit_db flow_autoload_dir error}
if {[is_attribute flow_skip_auto_db_save -obj_type root]} {set_flowkit_db flow_skip_auto_db_save true}
if {[is_attribute flow_skip_auto_generate_metrics -obj_type root]} {set_flowkit_db flow_skip_auto_generate_metrics false}
if {[is_attribute flow_top -obj_type root]} {set_flowkit_db flow_top {}}
if {[is_attribute flow_hier_path -obj_type root]} {set_flowkit_db flow_hier_path {}}
if {[is_attribute flow_schedule -obj_type root]} {set_flowkit_db flow_schedule {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_flowkit_db flow_step_check_tcl {}}
if {[is_attribute flow_script -obj_type root]} {set_flowkit_db flow_script {}}
if {[is_attribute flow_yaml_script -obj_type root]} {set_flowkit_db flow_yaml_script {}}
if {[is_attribute flow_cla_enabled_features -obj_type root]} {set_flowkit_db flow_cla_enabled_features {}}
if {[is_attribute flow_cla_inject_tcl -obj_type root]} {set_flowkit_db flow_cla_inject_tcl {}}
if {[is_attribute flow_error_message -obj_type root]} {set_flowkit_db flow_error_message {}}
if {[is_attribute flow_error_errorinfo -obj_type root]} {set_flowkit_db flow_error_errorinfo {}}
if {[is_attribute flow_reset_time_after_flow_init -obj_type root]} {set_flowkit_db flow_reset_time_after_flow_init false}
if {[is_attribute flow_error_write_db -obj_type root]} {set_flowkit_db flow_error_write_db true}
if {[is_attribute flow_advanced_metric_isolation -obj_type root]} {set_flowkit_db flow_advanced_metric_isolation flow}
if {[is_attribute flow_yaml_root -obj_type root]} {set_flowkit_db flow_yaml_root {}}
if {[is_attribute flow_yaml_root_dir -obj_type root]} {set_flowkit_db flow_yaml_root_dir {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_flowkit_db flow_setup_config {HUDDLE {!!map {}}}}
if {[is_attribute flow_yamllint_exec -obj_type root]} {set_flowkit_db flow_yamllint_exec yamllint}

#############################################################
#####   User Defined Attributes   ###########################

