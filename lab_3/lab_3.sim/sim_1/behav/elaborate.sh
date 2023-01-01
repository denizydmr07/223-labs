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
ExecStep $xv_path/bin/xelab -wto 1b32ddaca5eb4bfb89a5ce0493714ef1 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot Structural_MUX8_tb_behav xil_defaultlib.Structural_MUX8_tb xil_defaultlib.glbl -log elaborate.log
