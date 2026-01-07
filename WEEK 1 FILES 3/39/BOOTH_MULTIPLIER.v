
module booth_multiplier(input [3:0] multiplicand, input [3:0] multiplier, output reg [7:0] product);
  reg [4:0] A, S, P;
  integer i;

  always @(*) begin
    A = {multiplicand, 5'b00000};
    S = {(~multiplicand + 1'b1), 5'b00000};  // 2's complement
    P = {4'b0000, multiplier, 1'b0};

    for (i = 0; i < 4; i = i + 1) begin
      case (P[1:0])
        2'b01: P = P + A;
        2'b10: P = P + S;
      endcase
      P = P >>> 1;
    end
    product = P[7:0];
  end
endmodule



