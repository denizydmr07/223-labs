# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/deniz/project/project.cache/wt [current_project]
set_property parent.project_path /home/deniz/project/project.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /home/deniz/project/project.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib -sv {
  /home/deniz/project/project.srcs/sources_1/new/RegisterFile8x4.sv
  /home/deniz/project/project.srcs/sources_1/new/Mux2x1.sv
  /home/deniz/project/project.srcs/sources_1/new/InstructionMemory.sv
  /home/deniz/project/project.srcs/sources_1/new/DataMemory.sv
  /home/deniz/project/project.srcs/sources_1/new/AscendingSorter.sv
  /home/deniz/project/project.srcs/sources_1/new/Adder_4b.sv
  /home/deniz/project/project.srcs/sources_1/new/Datapath.sv
  /home/deniz/project/project.srcs/sources_1/new/ControlUnit.sv
  /home/deniz/project/project.srcs/sources_1/new/Debouncer.sv
  /home/deniz/project/project.srcs/sources_1/new/StateClockDivider.sv
  /home/deniz/project/project.srcs/sources_1/new/SevenSegmentDisplay.sv
  /home/deniz/project/project.srcs/sources_1/new/Processor.sv
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/deniz/project/project.srcs/constrs_1/new/Processor.xdc
set_property used_in_implementation false [get_files /home/deniz/project/project.srcs/constrs_1/new/Processor.xdc]


synth_design -top Processor -part xc7a35tcpg236-1


write_checkpoint -force -noxdef Processor.dcp

catch { report_utilization -file Processor_utilization_synth.rpt -pb Processor_utilization_synth.pb }
