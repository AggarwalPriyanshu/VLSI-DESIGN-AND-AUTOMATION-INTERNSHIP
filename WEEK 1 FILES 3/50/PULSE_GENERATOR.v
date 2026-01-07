module pulse_gen(input clk, input rst, output reg pulse);
  reg [3:0] count;

  always @(posedge clk or posedge rst)
    if (rst) begin
      count <= 0;
      pulse <= 0;
    end else if (count == 4) begin
      pulse <= 1;
      count <= 0;
    end else begin
      pulse <= 0;
      count <= count + 1;
    end
endmodule



