
module ram_4x1(input clk, input we, input [1:0] addr, input din, output dout);
  reg [0:3] mem;
  assign dout = mem[addr];

  always @(posedge clk) begin
    if (we)
      mem[addr] <= din;
  end
endmodule


