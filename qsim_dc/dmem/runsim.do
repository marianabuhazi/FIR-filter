##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

#Setup
 vlib work 
 vmap work work

#Include Netlist and Testbench
 vlog +acc -incr /courses/ee6321/share/ibm13rflpvt/verilog/ibm13rflpvt.v
 vlog +acc -incr ../../dc/dmem/dmem.nl.v
 vlog +acc -incr ../../rtl/dmem/dmem10.v
 vlog +acc -incr ../../rtl/dmem/DATA_MEMORY.v
 vlog +acc -incr tb_dmem.v 

#Run Simulator 
#SDF from DC is annotated for the timing check 
vsim -voptargs=+acc -t ps -lib work -sdftyp dmem_0=../../dc/dmem/dmem.syn.sdf tb_dmem
 do waveformat.do   
 run -all
