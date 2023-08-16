##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

#Setup
 vlib work 
 vmap work work

#Include Netlist and Testbench
 vlog +acc -incr /courses/ee6321/share/ibm13rflpvt/verilog/ibm13rflpvt.v
 vlog +acc -incr ../../dc/fsm/fsm.nl.v
 vlog +acc -incr ../../rtl/dmem/dmem10.v
 vlog +acc -incr ../../rtl/dmem/DATA_MEMORY.v
 vlog +acc -incr ../../rtl/cmem/COEFF_MEMORY.v
 vlog +acc -incr tb_fsm.v 

#Run Simulator 
#SDF from DC is annotated for the timing check 
vsim -voptargs=+acc -t ps -lib work -sdftyp fsm_0=../../dc/fsm/fsm.syn.sdf tb_fsm
 do waveformat.do   
 run -all
