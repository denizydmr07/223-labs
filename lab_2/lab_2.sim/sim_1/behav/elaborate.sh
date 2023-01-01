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
ExecStep $xv_path/bin/xelab -wto 6e01e978997e48d2bb30e421c94327ee -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot Half_Adder_Behavioral_tb_behav xil_defaultlib.Half_Adder_Behavioral_tb xil_defaultlib.glbl -log elaborate.log
