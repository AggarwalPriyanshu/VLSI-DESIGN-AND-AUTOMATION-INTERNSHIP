module bidirectional_shift_register_tb;
  reg clk, rst, sin;
  reg [1:0] mode;
  reg [3:0] d;
  wire [3:0] q;

  bidirectional_shift_register uut (.clk(clk), .rst(rst), .mode(mode), .sin(sin), .d(d), .q(q));

  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    $monitor("mode=%b sin=%b q=%b", mode, sin, q);
    rst = 1; d = 4'b1010; #10;
    rst = 0;

    mode = 2'b01; sin = 1; #10;
    mode = 2'b10; sin = 0; #10;
    mode = 2'b00; #10;
    $finish;
  end
endmodule


