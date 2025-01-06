onerror {quit -f}
vlib work
vlog -work work WIMPAVR_DEMO.vo
vlog -work work WIMPAVR.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.AVR_TEST_vlg_vec_tst
vcd file -direction WIMPAVR.msim.vcd
vcd add -internal AVR_TEST_vlg_vec_tst/*
vcd add -internal AVR_TEST_vlg_vec_tst/i1/*
add wave /*
run -all
