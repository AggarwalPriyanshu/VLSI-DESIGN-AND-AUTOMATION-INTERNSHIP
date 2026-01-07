
module ram_4x4(input clk, input we, input [1:0] addr, input [3:0] din, output [3:0] dout);
  reg [3:0] mem [0:3];
  assign dout = mem[addr];

  always @(posedge clk) begin
    if (we)
      mem[addr] <= din;
  end
endmodule


	

