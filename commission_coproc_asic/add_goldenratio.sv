module add_goldenratio (
    input  [63:0] A,
    output reg [63:0] S,
    input  CLK,
    input  CE
);
    localparam XRSR_GOLDEN_RATIO = 64'h9e3779b97f4a7c15;
    reg [63:0] stages [4:0];

always @(posedge CLK) begin
    stages[0] <= A + XRSR_GOLDEN_RATIO;
    stages[1] <= stages[0];
    stages[2] <= stages[1];
    stages[3] <= stages[2];
    stages[4] <= stages[3];
    S <= stages[4];
end
endmodule