# ---- 1. Where are my files? ----
set_db init_lib_search_path ../lib
set_db init_hdl_search_path ../rtl

# ---- 2. Load the cell library ----
read_libs slow_vdd1v0_basicCells.lib

# ---- 3. Load my design ----
read_hdl counter.v
elaborate

# ---- 4. Load the speed rules (clock) ----
read_sdc ../constraints/constraints_top.sdc

# ---- 5. Synthesis: 3 steps ----
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium

syn_generic
write_hdl > outputs/counter_generic.v

syn_map
write_hdl > outputs/counter_map.v

syn_opt
write_hdl > outputs/counter_netlist.v

# ---- 6. Save the reports ----
report_timing > reports/timing.rpt
report_area   > reports/area.rpt
report_gates  > reports/gates.rpt
report_power  > reports/power.rpt
report_qor    > reports/qor.rpt

# ---- 7. Save files for the next tools ----
write_sdc > outputs/counter.sdc
write_sdf > outputs/counter.sdf
