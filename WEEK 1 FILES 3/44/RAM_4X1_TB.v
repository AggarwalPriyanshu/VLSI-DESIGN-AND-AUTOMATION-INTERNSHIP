
module ram_4x1_tb;
  reg clk, we, din;
  reg [1:0] addr;
  wire dout;

  ram_4x1 uut (.clk(clk), .we(we), .addr(addr), .din(din), .dout(dout));

  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    $monitor("addr=%b din=%b dout=%b", addr, din, dout);
    we = 1; addr = 2'b00; din = 1; #10;
    addr = 2'b01; din = 0; #10;
    we = 0; addr = 2'b00; #10;
    addr = 2'b01; #10;
    $finish;
  end
endmodule


