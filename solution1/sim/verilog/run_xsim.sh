
/home/sumin/tools/Xilinx/Vivado/Vivado/2020.1/bin/xelab xil_defaultlib.apatb_Conv_sysarr_top glbl -prj Conv_sysarr.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  --lib "ieee_proposed=./ieee_proposed" -s Conv_sysarr 
/home/sumin/tools/Xilinx/Vivado/Vivado/2020.1/bin/xsim --noieeewarnings Conv_sysarr -tclbatch Conv_sysarr.tcl

