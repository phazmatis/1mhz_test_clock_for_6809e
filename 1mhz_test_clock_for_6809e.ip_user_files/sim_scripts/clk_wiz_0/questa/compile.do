vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm

vlog -work xil_defaultlib -64 -sv "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"E:/xiliinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"E:/xiliinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"../../../../1mhz_test_clock_for_6809e.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_clk_wiz.v" \
"../../../../1mhz_test_clock_for_6809e.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.v" \

vlog -work xil_defaultlib "glbl.v"

