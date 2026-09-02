module add_u64 (
    input  [63:0] A,
    input  [63:0] B,
    output reg [63:0] S,
    input  CLK,
    input  CE
);
    reg [63:0] stages [4:0];

always @(posedge CLK) begin
    stages[0] <= A + B;
    stages[1] <= stages[0];
    stages[2] <= stages[1];
    stages[3] <= stages[2];
    stages[4] <= stages[3];
    S <= stages[4];
end
endmodule