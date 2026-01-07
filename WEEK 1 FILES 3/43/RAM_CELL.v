module ram_cell(input clk, input we, input din, output reg dout);
  always @(posedge clk) begin
    if (we)
      dout <= din;
  end
endmodule


