module pulse_gen_tb;
  reg clk, rst;
  wire pulse;
  pulse_gen uut(.clk(clk), .rst(rst), .pulse(pulse));

  always #5 clk = ~clk;

  initial begin
    clk = 0; rst = 1; #10;
    rst = 0;
    repeat(30) #10;
    $finish;
  end
endmodule


