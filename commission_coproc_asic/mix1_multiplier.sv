module mix1_multiplier (
    input  [63:0] A,
    output reg [63:0] P,
    input  CLK,
    input  CE
);
    localparam XRSR_MIX1 = 64'hbf58476d1ce4e5b9;
    reg [63:0] stages [16:0];

always @(posedge CLK) begin
    stages[0] <= A * XRSR_MIX1;
    stages[1] <= stages[0];
    stages[2] <= stages[1];
    stages[3] <= stages[2];
    stages[4] <= stages[3];
    stages[5] <= stages[4];
    stages[6] <= stages[5];
    stages[7] <= stages[6];
    stages[8] <= stages[7];
    stages[9] <= stages[8];
    stages[10] <= stages[9];
    stages[11] <= stages[10];
    stages[12] <= stages[11];
    stages[13] <= stages[12];
    stages[14] <= stages[13];
    stages[15] <= stages[14];
    stages[16] <= stages[15];
    P <= stages[16];
end
endmodule