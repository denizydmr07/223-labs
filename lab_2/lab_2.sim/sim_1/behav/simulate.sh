#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2016.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim Half_Adder_Behavioral_tb_behav -key {Behavioral:sim_1:Functional:Half_Adder_Behavioral_tb} -tclbatch Half_Adder_Behavioral_tb.tcl -log simulate.log
