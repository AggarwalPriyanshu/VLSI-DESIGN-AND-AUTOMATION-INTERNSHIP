module ram_cell_tb;
  reg clk, we, din;
  wire dout;

  ram_cell uut (.clk(clk), .we(we), .din(din), .dout(dout));

  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    $monitor("we=%b din=%b dout=%b", we, din, dout);
    we = 1; din = 1; #10;
    we = 0; din = 0; #10;
    $finish;
  end
endmodule


