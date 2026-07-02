// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed Jul  1 23:45:50 2026
// Host        : death running 64-bit CachyOS
// Command     : write_verilog -force -mode funcsim
//               /home/boysanic/commission_hw/commission_coproc/commission_coproc.gen/sources_1/ip/add_u32/add_u32_sim_netlist.v
// Design      : add_u32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k480tffg1156-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_u32,c_addsub_v12_0_21,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_21,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module add_u32
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
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
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
  add_u32_c_addsub_v12_0_21 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2672)
`pragma protect data_block
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
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11312)
`pragma protect data_block
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
jvu1tXt4zGrRqaMhnXZj9SQc3qRpDF7ucC8=
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
