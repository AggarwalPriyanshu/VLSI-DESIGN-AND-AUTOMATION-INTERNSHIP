module ram_4x4_tb;
  reg clk, we;
  reg [1:0] addr;
  reg [3:0] din;
  wire [3:0] dout;

  ram_4x4 uut (.clk(clk), .we(we), .addr(addr), .din(din), .dout(dout));

  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    $monitor("addr=%b din=%b dout=%b", addr, din, dout);
    we = 1; addr = 2'b00; din = 4'b1010; #10;
    addr = 2'b01; din = 4'b0101; #10;
    we = 0; addr = 2'b00; #10;
    addr = 2'b01; #10;
    $finish;
  end
endmodule




