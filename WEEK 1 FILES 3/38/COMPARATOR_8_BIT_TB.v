module comparator_8bit_tb;
  reg [7:0] a, b;
  wire gt, lt, eq;
  comparator_8bit uut (.a(a), .b(b), .gt(gt), .lt(lt), .eq(eq));

  initial begin
    $monitor("a=%d b=%d → gt=%b lt=%b eq=%b", a, b, gt, lt, eq);
    a=8'd123; b=8'd100; #10;
    a=8'd80;  b=8'd90;  #10;
    a=8'd55;  b=8'd55;  #10;
    $finish;
  end
endmodule

