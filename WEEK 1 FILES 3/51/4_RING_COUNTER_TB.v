module ring_counter_tb;
  reg clk, rst;
  wire [3:0] q;
  ring_counter uut(.clk(clk), .rst(rst), .q(q));

  always #5 clk = ~clk;

  initial begin
    clk = 0; rst = 1; #10;
    rst = 0;
    repeat(8) #10;
    $finish;
  end
endmodule


