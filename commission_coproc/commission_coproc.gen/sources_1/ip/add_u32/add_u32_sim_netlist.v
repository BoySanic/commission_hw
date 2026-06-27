// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sat Jun 27 00:36:09 2026
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
paeOMxYAOtvR9U2lzsSrU7aV/EI3FjIKtbz1JDHFdeSq4dZfujsBT0uKj44+SYFT5672yCfd+8ji
NmyFxYgkh/5pB51MyBWlXBS/66nt3KwqIGmyySm+kde6YTgxCYrPeEpo8IQ2GjhO9bxIQptzRTom
K2Ov4AoK1wD3j82qtxAHY65U9GICtz8e93+fBquszvt0X6M8ESKkMyb/Rb7Voeb01pZJRT3ZJ0ys
dmWfDKaXw8ipFOAJJTWXd0wdRX/ZyDgGvOGa3m93EfsLFLwn6yXxcwELeNhiExmSlKYul7321Ws/
MQOLPB/4ob1SI3dyE/fRssxUK649hhs1MZ7AKviAOKQbA5iuzLMatrXSFNRvE1fMv7CHj1NNcrVY
7gHTKR1njqr1ffJw1XQ5IMR+8zly6APTsNChfmmWBHZxqmUb33c9mrjhjgRPjLWK18o830+Op+0h
/D4pk3b8D9PHYpTBzzOqzV/fFFJ+irIMK/mtvOz408VcFpFLxj2/fwUDl3dpFHRLlg85HEeyATev
UVyMiPhJJWvpHBoTBQGxsEtFQqztj/nRxASLmB2VCrVpclglexH+4rKjF+b8HXL1Fxjectq8zA5j
H/Fv+Vt+MYRVUwUR5yPo6DBgk0PFIw7JBA+NINnz0PAdjvZFirgTsgXsqn0sT2SFxB5nH+z2Z/nZ
o3MEifDN4lieBblYgKbVdSzXG6RfR+WNqHdkwbOPOLd+5f01zYOT2qcDCDhqGXfCRoaNf0Fh63x3
X1E5fsAtE5bO2bwJK8Fcxor7e5bmZAFL+aG9jC1zX++pKsWYFZxrVbKlumQCIjITSuqMMzMbedrA
MYSCbBbyG2x9keFGb2Qtvs96M5WFRxDZqAAMM+qJF6zHCfp+iQbKmLelYyWxfkHoTew08XwZU7F1
OH/ol9OibFJk0KDgnNKVehCAOZHJKBGlkyA+9+RA+DNNYMG/zx4+HoZ4wLwKeTar80zbU3/D8C7K
3I4Kj9InsAE45Djvw0mkP2n6jaVDNX8n2kZziFgqznyvs7BBlNnxN4WlXLx19rFnkPDnfSSYNVAF
XFPgowmWjetSyUPlc3KqfC30AKF5r1O4NHE407NWx0nu+oBXyy3cegyfgn7tb5NrW8ytbe1OIPo5
//v0sHCd/fibAWWtjk0DytYYJs92QPq0RIPUw9lVXbOvL1hzqVpSXvBHGDUs11ZfyKinCO/Jcoc1
37AUujZjyY/K8h6Zq+BeGat+XZB6ymx1cJ+B7p4Q+Csu/1drXhxQS3rhXOnFcjfCDmTBLlfsICW1
Wo551gFWnYuVA06iXsdL86Vn+nrTkEROgi3Kfowgckq/pkEQ2Nd7PkLxKpG8lVKtli5QP52e9NFb
jKIH7iufsStXqUW725bHrsqDtlGqBcnvmp9pOpHckWUK40ksM1ywGcCbq/pOLp6Sn8hDEceif1d3
n5bbSUx6uD4o6s9GwnM5i4pgWEf/yZx61+Q98IZWLLqdhsGmofLxfk9NMejsaoKxHi7/nFuKymU/
gb8drmQCT6Qi4NP8Fmw1RQrAHHFjwZ3Gl1wkr5udvavTUXyeZr1/95uFBZgVK5ubN7NmOPw92qdA
6mc2XVcQJdPMtNgmEXoiWxqTS8fZXOGNCHf6kaz7LRKknIClpJrZk6uo7bt5z5bhhzuRB4tJ2h+D
Bv8RvMqzFS0IRv0GedWzW5RmTETpbG3tW6nq7Q/7htiUrRQKAX144JQUkmcTbo+HnPRpxq92B+sP
vAXryS3wfBW5FGaE/o9UoBUitm0mU/S8N0OxTEkmRmDkPaJG1IX4XLeWKOjXihur+z6rSWZe3mAj
y6Qbal/jUzWr6G4QneDPbpN0Z/x1jM+KO2SDPSpCkn1zQSjHMXuXEFA17mdd7kJSYnYuApF2rFTi
savHDySiYbjerjT/LqjDdaL4VRErTdUkTtgOnuG6sbvHIJRcoM9AYGcbjzfqun1RqccDnU4Sc/ln
icTr24u8gdmswkfyULWdvxkJ4RKnET6QkpK4Z5l4XYXV5a2En9nsRHtLHWiT9pDouyo5kov0mNK8
2cVPswLe89M5vTWs5qAVvKJh1deijGxpyiO+Dafg3o3Z6BiAGzkH1U7Pl/KyNSxHTJg3tu03xqK9
KNzJqqFbe/pC4u5xYHvFdUEjNvTXoN3VpVXsd96DetKdxOmeNkJFJEUmIm+Lt8bHnuAsFfQ2DHtW
HdQT3vF3lnevV9OSVX9OIKi4GIWph59v9YnPiU3uBjdS3Py/wh4u1cU8pgUhmcF8j3m1vg1Cuonr
gtfJ0gmvdJ9i0at86F4dcVcKg91Q7C5dKkfnIzZkZ28gon4Y5ldgw8cUbTv1HLilZukS0CbDMttB
by3O76Abucomdvgt9Tod0oj3PTlxgQQIPotZupiupDogsNb2r72+6Meyc19bvBObuXJun+W6XoCT
dwc9YUvQF6fGptJx+g0RLS5YefzfWtY3ziKJBLB5Z23TzXr8ZQ3bRwRKoVhw1hUrB/gs6b1oF9Gb
C8rL2K6++7YeFfPAoepFH1IG4PtQdGamg2Bv2YWi5bm37SA6CRdKlKoic0zNCLb1DSp91AXlHqa/
KZwQaCAIvKMcSG8EfLos2ftZu0JRsGRGz1qKBwppA4f5DNEv3Md9SBr4YjgjJwcuzne25FP9aR0X
dpUm78ZpKPfNg//mvTDHxB8TvA8gBkOc+mQWA3o5ffFLbCYJel7RfTH5WKRkHJveDo0+AZHwJjiW
vBdVy/Rne51EluIxhCrM9M3+mIfgSRYR8GYOJ3y3xQL26T2xB6dzOAX2ugv9OEJmzHRe3bep3bf5
/IHQeSO9VGmXPLGKoVhJnVB4XygUTUa6qXCfPyFDnFafcMTARDPL0GQ93IGizVIh5ksDWvNRPWql
9mdAUg1X7TKGFluHB9++xNKoWa7NK7Xsvs2Gn8/kidVnn72tPsrkoa77RhPqCzH6Fo8SjIhczZBB
UQ3iwUwlMM6JsG6+NRdJhXx7WXhF3icAwQn1L56fSYuFYg1nzhMz8L1BkepKQ3qvc037ep5Wx98B
6J7uXeOyL6RlwPzDEtqdkxvDnoV6F98uOWV5VhNUlwnRvbeJDI4DtO2ZxynLwKRV+4rn+4hf8MFq
cSJuG8RVsC2/nezI8A9vTX/jY7ILYAB4Tz8392BHM80cFJzIfjnzdBOoywyLETxacQC+sydCJouR
7zjrlD4bjaQs8050lQBJf6xIOQSu6fpK1THaw0xW4itRfU+5a+H0IHa5QGakP+NMKZU6XTsIEont
2CHPk2vOLafMX8vXK5BARnJ0kihDEHJt0EBidzwnvtl730AW7zCtgKgQP95jnz3g0gcxp+xw0Ftl
D51UeMztCR3IlxML9oWsTnT4iVUlhfuZCTxkaoMXvnczJ/92zeaDrBuewlFLueWxh6rZIQxJvpob
sV4/do3B3Tq22QLSuokRTLwrOinlRiW73GKh0QvINFyVHlJZpGZCmaoV+VNSmOS4Kc8DTzPwvR4F
rBbMFTL8mQqA1SN3tSbAilLhLLJ9LTioq52BVe6dfixp81vylWUW/uUSg0f17gP2u1g=
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11280)
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
