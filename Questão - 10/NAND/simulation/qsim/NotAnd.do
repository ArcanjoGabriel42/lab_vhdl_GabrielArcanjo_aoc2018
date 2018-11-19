onerror {exit -code 1}
vlib work
vcom -work work NotAnd.vho
vcom -work work TestNAND.vwf.vht
vsim -novopt -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.NotAnd_vhd_vec_tst
vcd file -direction NotAnd.msim.vcd
vcd add -internal NotAnd_vhd_vec_tst/*
vcd add -internal NotAnd_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
