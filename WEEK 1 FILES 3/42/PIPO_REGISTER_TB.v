
module pipo_register_tb;
  reg clk, rst;
  reg [3:0] d;
  wire [3:0] q;

  pipo_register uut (.clk(clk), .rst(rst), .d(d), .q(q));

  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    $monitor("d=%b q=%b", d, q);
    rst = 1; #10;
    rst = 0; d = 4'b1010; #10;
    d = 4'b0101; #10;
    $finish;
  end
endmodule
