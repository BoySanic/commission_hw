localparam XRSR_GOLDEN_RATIO = 64'h9e3779b97f4a7c15;

module add_goldenratio (
    input  [63:0] A,
    output [63:0] S,
    input  CLK,
    input  CE
);
    reg [63:0] stages [6:0];

always @(posedge CLK) begin
    stages[0] <= A + XRSR_GOLDEN_RATIO;
    stages[1] <= stages[0];
    stages[2] <= stages[1];
    stages[3] <= stages[2];
    stages[4] <= stages[3];
    stages[5] <= stages[4];
    S <= stages[5];
end
endmodule