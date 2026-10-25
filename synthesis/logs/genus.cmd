# Cadence Genus(TM) Synthesis Solution, Version 25.10-p002_1, built Apr 17 2025 15:35:38

# Date: Sat Oct 24 00:06:39 2026
# Host: techcad (x86_64 w/Linux 4.18.0-305.el8.x86_64) (12cores*48cpus*2physical cpus*Intel(R) Xeon(R) Silver 4310 CPU @ 2.10GHz 18432KB)
# OS:   Red Hat Enterprise Linux 8.4 (Ootpa)

set_db init_lib_search_path ../lib
set_db init_hdl_search_path ../rtl
read_libs slow_vdd1v0_basicCells.lib
read_hdl counter.v
elaborate
write_hdl > outputs/elaborated.v
