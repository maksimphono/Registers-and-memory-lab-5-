#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets en_IBUF];
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets <HEX_OBUF[6]_inst_i_11_n_0> ]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets <HEX_OBUF[6]_inst_i_2_n_0> ]
set_property ALLOW_COMBINATORIAL_LOOPS_TRUE [get_nets <counter0[0]> ]
set_property ALLOW_COMBINATORIAL_LOOPS_TRUE [get_nets <counter0[1]> ]
set_property ALLOW_COMBINATORIAL_LOOPS_TRUE [get_nets <counter0[2]> ]
set_property ALLOW_COMBINATORIAL_LOOPS_TRUE [get_nets <counter[4]> ]
set_property ALLOW_COMBINATORIAL_LOOPS_TRUE [get_nets <counter[5]> ]



# CLK
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports { clk }];

# 7 - segment anodes
set_property -dict { PACKAGE_PIN J17 IOSTANDARD LVCMOS33 } [get_ports { AN[0] }];
set_property -dict { PACKAGE_PIN J18 IOSTANDARD LVCMOS33 } [get_ports { AN[1] }];
set_property -dict { PACKAGE_PIN T9 IOSTANDARD LVCMOS33 } [get_ports { AN[2] }];
set_property -dict { PACKAGE_PIN J14 IOSTANDARD LVCMOS33 } [get_ports { AN[3] }];
set_property -dict { PACKAGE_PIN P14 IOSTANDARD LVCMOS33 } [get_ports { AN[4] }];
set_property -dict { PACKAGE_PIN T14 IOSTANDARD LVCMOS33 } [get_ports { AN[5] }];
set_property -dict { PACKAGE_PIN K2 IOSTANDARD LVCMOS33 } [get_ports { AN[6] }];
set_property -dict { PACKAGE_PIN U13 IOSTANDARD LVCMOS33 } [get_ports { AN[7] }];

# 7 - segment controls
set_property -dict { PACKAGE_PIN T10 IOSTANDARD LVCMOS33 } [get_ports { HEX[0] }];
set_property -dict { PACKAGE_PIN R10 IOSTANDARD LVCMOS33 } [get_ports { HEX[1] }];
set_property -dict { PACKAGE_PIN K16 IOSTANDARD LVCMOS33 } [get_ports { HEX[2] }];
set_property -dict { PACKAGE_PIN K13 IOSTANDARD LVCMOS33 } [get_ports { HEX[3] }];
set_property -dict { PACKAGE_PIN P15 IOSTANDARD LVCMOS33 } [get_ports { HEX[4] }];
set_property -dict { PACKAGE_PIN T11 IOSTANDARD LVCMOS33 } [get_ports { HEX[5] }];
set_property -dict { PACKAGE_PIN L18 IOSTANDARD LVCMOS33 } [get_ports { HEX[6] }];

# 1 - bit LED
set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports { is199 }];

# SWITCHES
set_property -dict { PACKAGE_PIN U11 IOSTANDARD LVCMOS33 } [get_ports { input_mode[0] }];
set_property -dict { PACKAGE_PIN U12 IOSTANDARD LVCMOS33 } [get_ports { input_mode[1] }];
set_property -dict { PACKAGE_PIN L16 IOSTANDARD LVCMOS33 } [get_ports { read_mode }];

# BUTTONS
set_property -dict { PACKAGE_PIN M18 IOSTANDARD LVCMOS33 } [get_ports { buttons[4] }];
set_property -dict { PACKAGE_PIN P17 IOSTANDARD LVCMOS33 } [get_ports { buttons[3] }];
set_property -dict { PACKAGE_PIN N17 IOSTANDARD LVCMOS33 } [get_ports { buttons[2] }];
set_property -dict { PACKAGE_PIN M17 IOSTANDARD LVCMOS33 } [get_ports { buttons[1] }];
set_property -dict { PACKAGE_PIN P18 IOSTANDARD LVCMOS33 } [get_ports { buttons[0] }];
