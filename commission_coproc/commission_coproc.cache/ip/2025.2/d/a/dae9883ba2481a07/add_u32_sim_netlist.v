// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sat Jun 27 00:36:08 2026
// Host        : death running 64-bit CachyOS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ add_u32_sim_netlist.v
// Design      : add_u32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k480tffg1156-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_u32,c_addsub_v12_0_21,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_21,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_mode = "slave a_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_mode = "slave b_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_mode = "slave ce_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_mode = "master s_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [31:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [31:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "00000000000000000000000000000000" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_21 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
iAcC0jwWy9Z5+wl+B8MhHqxxL5TfadxgWGZ+9slm8BFFTgz/icCG22xcVWRmDuK3N9Rb/B5NiGwN
e/xgYClcjFKLFKF6obpmTy3RQlN7DScdrXr2QPScDw/WCtjYdj9MXrrsTWVQwdcVB9Y8aCZ9hPfz
DJKtmoIuwh46MnjDL78=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U/zku1ffpc6imSyt/Wbh/wmt3ZQgYvnE2OQTi42Jd8LcGOrhT9PAdtwSQdTSCH1dxjktZRV+QtvX
8A4bc4cWoFA/p1DWMlh6rWbKmGKWlYaZWym65dURxZuhDRjCpUhGkTx09hzOAo4rS/y5qBVT0XM+
chpLC4mb8yrj9h9eIo0+QwmXPTyVq9UwMd8Uw7pzoUr1HZEoR73gGH3BCtAKbRQcU0RH03UzLnf7
qNxZVR3943pSRYhj4ZU3ACas36w9K8itP5nYl7hsMlDumjQrrXyzDC9maknE3klhemcvOpkd59zw
cw/o4zuOPBecIZRMu2V7hDGgqHe4jLQHnlbpig==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SWFvi0bYUA0VvwnOjVGnOuCVpr45WDSNZC6FHRlU2Pb6y7bUQB4QXLRpCrMe9fVqN/aig/5T/xu2
qyygh05r+nkKin8SM+PyK9x7oVaFGtQe2XZ1Yt1pHtev9TRVuDTX344eBL1SzvU6VlmiM8y3i/yc
mO7Wkl5Zkq7T+cTNuCk=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E1brfDHDtCUmBjWNysgUzttlnzXf+4/bkYl5Jm5ar5ZmwHNiefxalW+NIno0w0UgPyY1g8FwagIf
OTUvGsmmvU5SQUnE3xfIjHV4X6MRb4wDHxQQrWW/PzC1ilb+efMt8vNanP7YSsnW44o3L4LbnoWR
toWSG2PdT8djxmp2lAIwLAZM7HPSNbv1AjNlZQiS/ogXl9pXdCKzCc6lrk8daEjoFGCInCVSSamq
/NvzxtTj2Lxi99fW/ZYnu6qbM7mn9RzAo1s/4ePEOMn77xYEdG2q93oL6WjdmK3ArXFoo0uq09VE
ZCpBgpDg+/NYnz+k/MeL8pl0avq3E1SX/7OFbQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QUq9iWMx9C09gSO7bXme3TQAT+KpWBDIgwuc5mquAxoXBxbjrXkAOyUlFPDvAR8zUigyn48IFmVM
R1ZXi89FZ/93iIMKDEzJsMwNO20nnmtgBhV7wdmZYED778+HpTDaOd48EEZFa13zrADED27mGYPQ
K7yigaVTlUFFr4LOdtvf4os7kjEmAl5h6/eTZYs9d6+ec/BJcAsfvRMqmY/fiPN1UszYmMy14wg/
/QG4nKULNjCxDHD18hFkLHixX0kiaC/KXUJZHxCJG+wNP1g7zwbL73MklY+QgJuzeT1jUBOr7Lz8
Q3+dk4nPKP6Z6uRU3TSVCW4kzGF/wAlkyhcJgw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KR91xvxUjHsIQTi6U9bSVmI7HXoSYi4F+/eG3Fx9n+MbrXO3Z0W5QX2Jsh503RAANZJ3jzcoQz8v
kZ6cc7DolfEItw3LQPZ7IllnHRl/mM9pdjaXUMmHXpm9SRepU+5DDmaVSlGI6ctxxuU5Z1QorU7S
JQf5p8ub+IfjMCa/cS4+xo76OOvbW0ddoLtGS43DYJq5tCXsiZFNF540pTZeqwuLkTjn13yPIxxn
zR9EpMicO506i84arUwjcV1ox750MgDJCa01vAFg33ZXr88tziMxFid5Fe6qO6xbAir+13+6CUO1
7IRSgtROityJcgEFBV/fVaax+NCLv6TZxtwyJw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E3dWRjbWg0PDvbIA3yDMBfgzFLFLB4qRDkWJ7V0l/03Ki/NR4OKM2fTjDrLuZFI12IXFFTF+I+Zv
Zw4B8GGzhipssnWs5DSTGjkWe12/kifre/tY812o1q1FXFv9RrBmBYZrBqcPz1kbbhmfYE7Y1Taq
e8yz1FRCjMagQBkCD1zMWjdWBH+3x+RUrjp7OQOuSbwgl1v7UiTl9vdSrzm/aSIbwTT2tmgEABi5
Sdn47hIlyOQ1A9x6RdTw98rq2pQSKIgxj45/IRkT+sn6zkRRQH9UlZESNYNsi6j5mGxWFPwV/b6V
3e6wLofc4TTgJvHClOH1UDi0WlkTLmu8E7cGPg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
ptQEntk2x7+Sf12mvNf1M4bwjBbWFpn2H2nhu45YXH4flC5Odk/MFv8wE0eXI73i/5lE2adRAawy
9Qx94hmQl4+g+9lEgLxvBJk34bePr/0WoUQY9p8Xd/vuOwjJXfzcy2LWwtadlxVGrGFSxkRuL9GW
EAzu92F+K4kagkji1XFzF/3VvOtewrkHF9xStIVAcIm8WClqFGPLQJhjrPvYZdCKP89sNwZLJWSU
yVG3Ajs58ZDGHX9wUsWpEtbQ49GfOuFJnzuBj3jE5fgTi8NGWmrmfhnWu/9wd7sbTLNIC1Ucdfln
Y/AFxtyWCOTrMD5SSRB7EhdyyjbTJMQ1EJWBKgv8TqELPQm2W97zh85j7IYkMZu27T62r/qyucC6
tKcQo8CcNVak9JL9ExK9WwccDSrCCVDnHP/F4qTbIWZgTQEHsUEjU77n0rgUEAbj/yzQjYkSGBZ2
BAi/4CaLcePuTIpZaSs7aWaGyxSa5YpUQdtnrd3t4vZaG1PagLLtpgaz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hYEN7fufkwYhPajcK3XG6QEkCkax//hsK8UridEWhrru5vrLFKuh9saq486oIXVtuNSBATbtQWM0
//V1rspp1F1YO8fClxg2LQ4dOh1lC2dgWcAiagLUrL5gsKw0OKIyRn+jArLBMH5/LgeDMCN/X+zQ
kN+B3g6bDkotuK75mvLjgn5SkfuHUAfXPWkydI2lQtJW/waiIe5O6jNsm+mx0Rv7590wXcWy96fs
1bYIQFY/osRx0LYzTB7I+YNu6UzDCPEZyEY/bUvUoNAB0BE3ZVwAZW4wjCuTffptQ01KOSVJbIZ1
HNvUm2nr5OtDbCukrf9WO53B+POoCLRu+1rFwA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nZRDmSuplPRp+nSH093UkX36t0J50lUM89z5TQhEEeyDrgGSNUCTzgIkUg5nORT3IBT6dlmV4cth
DlemVZEoQqRZvClVJ2V68X8gY7QrordhXb8iEFuy0Z8qrSDn44Osc3QhXFfxMeic6g4Pcs+4mC7a
rk8djdWqEuagMnFE4atFEuNn2kRUcr7D32RqXvgGRpdYE1Z0QROp57Byikd8ubR2fBLSj5DTE3Qh
cz1tVqKY549SXyIICxJ1aofHpkHa0wnbdmQplykNKvCtbAefEhQcDIufbMjn2rk2aMopzH5lP4wq
hx53Ry5/WinyZ6nSamAYTAXby87gUUB5mV8w/w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
N3P1AaatxnvHBvBt79NHHEwck4dlI5+VqsiRplzpymTzSe3l4Q4xxXzWQJHzu8zEEzAVdXBh6rPs
CMT4OBE6wxotpmQ5g5xzKhE89KG1egIZhpqDuwILmEGJakXONjKMwoOqRNEnD4HIapHmUD16DW+8
LcRX/B0ItP1MBZw5Q4DLI8SQoXo7hCZB8moOl2SoUK8u0kbtrL2/nUaeHPZG8lKHjDK2jWE7y91v
95iaAwaOvg7JTpOt5Kqy5isEWWe+nfi8HI+H3nOtIJk7nxacWYeZpVT+f7IEPTEq2NlkmdQtuRKi
/6+lYWvg4nxrOY0b+AsBI43zlbp5PW/ZWAzKSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2704)
`pragma protect data_block
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
RgoDsuXzPguOFzr8mB94zPjYXrcexyf2yQ==
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
iAcC0jwWy9Z5+wl+B8MhHqxxL5TfadxgWGZ+9slm8BFFTgz/icCG22xcVWRmDuK3N9Rb/B5NiGwN
e/xgYClcjFKLFKF6obpmTy3RQlN7DScdrXr2QPScDw/WCtjYdj9MXrrsTWVQwdcVB9Y8aCZ9hPfz
DJKtmoIuwh46MnjDL78=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U/zku1ffpc6imSyt/Wbh/wmt3ZQgYvnE2OQTi42Jd8LcGOrhT9PAdtwSQdTSCH1dxjktZRV+QtvX
8A4bc4cWoFA/p1DWMlh6rWbKmGKWlYaZWym65dURxZuhDRjCpUhGkTx09hzOAo4rS/y5qBVT0XM+
chpLC4mb8yrj9h9eIo0+QwmXPTyVq9UwMd8Uw7pzoUr1HZEoR73gGH3BCtAKbRQcU0RH03UzLnf7
qNxZVR3943pSRYhj4ZU3ACas36w9K8itP5nYl7hsMlDumjQrrXyzDC9maknE3klhemcvOpkd59zw
cw/o4zuOPBecIZRMu2V7hDGgqHe4jLQHnlbpig==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SWFvi0bYUA0VvwnOjVGnOuCVpr45WDSNZC6FHRlU2Pb6y7bUQB4QXLRpCrMe9fVqN/aig/5T/xu2
qyygh05r+nkKin8SM+PyK9x7oVaFGtQe2XZ1Yt1pHtev9TRVuDTX344eBL1SzvU6VlmiM8y3i/yc
mO7Wkl5Zkq7T+cTNuCk=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E1brfDHDtCUmBjWNysgUzttlnzXf+4/bkYl5Jm5ar5ZmwHNiefxalW+NIno0w0UgPyY1g8FwagIf
OTUvGsmmvU5SQUnE3xfIjHV4X6MRb4wDHxQQrWW/PzC1ilb+efMt8vNanP7YSsnW44o3L4LbnoWR
toWSG2PdT8djxmp2lAIwLAZM7HPSNbv1AjNlZQiS/ogXl9pXdCKzCc6lrk8daEjoFGCInCVSSamq
/NvzxtTj2Lxi99fW/ZYnu6qbM7mn9RzAo1s/4ePEOMn77xYEdG2q93oL6WjdmK3ArXFoo0uq09VE
ZCpBgpDg+/NYnz+k/MeL8pl0avq3E1SX/7OFbQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QUq9iWMx9C09gSO7bXme3TQAT+KpWBDIgwuc5mquAxoXBxbjrXkAOyUlFPDvAR8zUigyn48IFmVM
R1ZXi89FZ/93iIMKDEzJsMwNO20nnmtgBhV7wdmZYED778+HpTDaOd48EEZFa13zrADED27mGYPQ
K7yigaVTlUFFr4LOdtvf4os7kjEmAl5h6/eTZYs9d6+ec/BJcAsfvRMqmY/fiPN1UszYmMy14wg/
/QG4nKULNjCxDHD18hFkLHixX0kiaC/KXUJZHxCJG+wNP1g7zwbL73MklY+QgJuzeT1jUBOr7Lz8
Q3+dk4nPKP6Z6uRU3TSVCW4kzGF/wAlkyhcJgw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KR91xvxUjHsIQTi6U9bSVmI7HXoSYi4F+/eG3Fx9n+MbrXO3Z0W5QX2Jsh503RAANZJ3jzcoQz8v
kZ6cc7DolfEItw3LQPZ7IllnHRl/mM9pdjaXUMmHXpm9SRepU+5DDmaVSlGI6ctxxuU5Z1QorU7S
JQf5p8ub+IfjMCa/cS4+xo76OOvbW0ddoLtGS43DYJq5tCXsiZFNF540pTZeqwuLkTjn13yPIxxn
zR9EpMicO506i84arUwjcV1ox750MgDJCa01vAFg33ZXr88tziMxFid5Fe6qO6xbAir+13+6CUO1
7IRSgtROityJcgEFBV/fVaax+NCLv6TZxtwyJw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E3dWRjbWg0PDvbIA3yDMBfgzFLFLB4qRDkWJ7V0l/03Ki/NR4OKM2fTjDrLuZFI12IXFFTF+I+Zv
Zw4B8GGzhipssnWs5DSTGjkWe12/kifre/tY812o1q1FXFv9RrBmBYZrBqcPz1kbbhmfYE7Y1Taq
e8yz1FRCjMagQBkCD1zMWjdWBH+3x+RUrjp7OQOuSbwgl1v7UiTl9vdSrzm/aSIbwTT2tmgEABi5
Sdn47hIlyOQ1A9x6RdTw98rq2pQSKIgxj45/IRkT+sn6zkRRQH9UlZESNYNsi6j5mGxWFPwV/b6V
3e6wLofc4TTgJvHClOH1UDi0WlkTLmu8E7cGPg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
ptQEntk2x7+Sf12mvNf1M4bwjBbWFpn2H2nhu45YXH4flC5Odk/MFv8wE0eXI73i/5lE2adRAawy
9Qx94hmQl4+g+9lEgLxvBJk34bePr/0WoUQY9p8Xd/vuOwjJXfzcy2LWwtadlxVGrGFSxkRuL9GW
EAzu92F+K4kagkji1XFzF/3VvOtewrkHF9xStIVAcIm8WClqFGPLQJhjrPvYZdCKP89sNwZLJWSU
yVG3Ajs58ZDGHX9wUsWpEtbQ49GfOuFJnzuBj3jE5fgTi8NGWmrmfhnWu/9wd7sbTLNIC1Ucdfln
Y/AFxtyWCOTrMD5SSRB7EhdyyjbTJMQ1EJWBKgv8TqELPQm2W97zh85j7IYkMZu27T62r/qyucC6
tKcQo8CcNVak9JL9ExK9WwccDSrCCVDnHP/F4qTbIWZgTQEHsUEjU77n0rgUEAbj/yzQjYkSGBZ2
BAi/4CaLcePuTIpZaSs7aWaGyxSa5YpUQdtnrd3t4vZaG1PagLLtpgaz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hYEN7fufkwYhPajcK3XG6QEkCkax//hsK8UridEWhrru5vrLFKuh9saq486oIXVtuNSBATbtQWM0
//V1rspp1F1YO8fClxg2LQ4dOh1lC2dgWcAiagLUrL5gsKw0OKIyRn+jArLBMH5/LgeDMCN/X+zQ
kN+B3g6bDkotuK75mvLjgn5SkfuHUAfXPWkydI2lQtJW/waiIe5O6jNsm+mx0Rv7590wXcWy96fs
1bYIQFY/osRx0LYzTB7I+YNu6UzDCPEZyEY/bUvUoNAB0BE3ZVwAZW4wjCuTffptQ01KOSVJbIZ1
HNvUm2nr5OtDbCukrf9WO53B+POoCLRu+1rFwA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nZRDmSuplPRp+nSH093UkX36t0J50lUM89z5TQhEEeyDrgGSNUCTzgIkUg5nORT3IBT6dlmV4cth
DlemVZEoQqRZvClVJ2V68X8gY7QrordhXb8iEFuy0Z8qrSDn44Osc3QhXFfxMeic6g4Pcs+4mC7a
rk8djdWqEuagMnFE4atFEuNn2kRUcr7D32RqXvgGRpdYE1Z0QROp57Byikd8ubR2fBLSj5DTE3Qh
cz1tVqKY549SXyIICxJ1aofHpkHa0wnbdmQplykNKvCtbAefEhQcDIufbMjn2rk2aMopzH5lP4wq
hx53Ry5/WinyZ6nSamAYTAXby87gUUB5mV8w/w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
N3P1AaatxnvHBvBt79NHHEwck4dlI5+VqsiRplzpymTzSe3l4Q4xxXzWQJHzu8zEEzAVdXBh6rPs
CMT4OBE6wxotpmQ5g5xzKhE89KG1egIZhpqDuwILmEGJakXONjKMwoOqRNEnD4HIapHmUD16DW+8
LcRX/B0ItP1MBZw5Q4DLI8SQoXo7hCZB8moOl2SoUK8u0kbtrL2/nUaeHPZG8lKHjDK2jWE7y91v
95iaAwaOvg7JTpOt5Kqy5isEWWe+nfi8HI+H3nOtIJk7nxacWYeZpVT+f7IEPTEq2NlkmdQtuRKi
/6+lYWvg4nxrOY0b+AsBI43zlbp5PW/ZWAzKSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11328)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
