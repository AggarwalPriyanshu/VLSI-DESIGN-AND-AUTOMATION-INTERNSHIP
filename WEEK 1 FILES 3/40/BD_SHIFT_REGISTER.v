module bidirectional_shift_register (
  input clk,
  input rst,
  input [1:0] mode, // 00: hold, 01: shift right, 10: shift left
  input sin,
  input [3:0] d,
  output reg [3:0] q
);
  always @(posedge clk or posedge rst) begin
    if (rst)
      q <= d;
    else begin
      case (mode)
        2'b00: q <= q;
        2'b01: q <= {sin, q[3:1]};  // Shift right
        2'b10: q <= {q[2:0], sin};  // Shift left
        default: q <= q;
      endcase
    end
  end
endmodule




