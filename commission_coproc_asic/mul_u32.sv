module mul_u32 (
    input  [31:0] A,
    input  [31:0] B,
    output [31:0] S,
    input  CLK,
    input  CE
);
    reg [31:0] stages [6:0];

always @(posedge CLK) begin
    stages[0] <= A * B;
    stages[1] <= stages[0];
    stages[2] <= stages[1];
    stages[3] <= stages[2];
    stages[4] <= stages[3];
    stages[5] <= stages[4];
    S <= stages[5];
end
endmodule