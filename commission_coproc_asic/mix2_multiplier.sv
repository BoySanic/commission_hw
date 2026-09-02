localparam XRSR_MIX2 = 64'h94d049bb133111eb;

module mix2_multiplier (
    input  [63:0] A,
    output [63:0] P,
    input  CLK,
    input  CE
);
    reg [63:0] stages [6:0];

always @(posedge CLK) begin
    stages[0] <= A * XRSR_MIX2;
    stages[1] <= stages[0];
    stages[2] <= stages[1];
    stages[3] <= stages[2];
    stages[4] <= stages[3];
    stages[5] <= stages[4];
    P <= stages[5];
end
endmodule