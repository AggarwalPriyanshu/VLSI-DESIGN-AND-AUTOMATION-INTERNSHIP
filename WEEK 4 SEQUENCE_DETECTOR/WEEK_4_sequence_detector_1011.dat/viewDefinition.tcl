if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name MAX_TIMING\
   -timing\
    [list ${::IMEX::libVar}/mmmc/slow.lib]
create_library_set -name MIN_TIMING\
   -timing\
    [list ${::IMEX::libVar}/mmmc/fast.lib]
create_rc_corner -name RC_CORNERS\
   -cap_table ${::IMEX::libVar}/mmmc/t018s6mlv.capTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -qx_tech_file ${::IMEX::libVar}/mmmc/RC_CORNERS/t018s6mm.tch
create_delay_corner -name MAX_DELAY\
   -library_set MAX_TIMING\
   -rc_corner RC_CORNERS
create_delay_corner -name MIN_DELAY\
   -library_set MIN_TIMING\
   -rc_corner RC_CORNERS
create_constraint_mode -name CONSTRAINTS\
   -sdc_files\
    [list ${::IMEX::dataVar}/mmmc/modes/CONSTRAINTS/CONSTRAINTS.sdc]
create_analysis_view -name BEST -constraint_mode CONSTRAINTS -delay_corner MIN_DELAY
create_analysis_view -name WORST -constraint_mode CONSTRAINTS -delay_corner MAX_DELAY
set_analysis_view -setup [list WORST] -hold [list BEST]
