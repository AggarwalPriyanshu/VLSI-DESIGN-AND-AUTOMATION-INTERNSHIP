module comparator_4bit_tb;
  reg [3:0] a, b;
  wire gt, lt, eq;
  comparator_4bit uut (.a(a), .b(b), .gt(gt), .lt(lt), .eq(eq));

  initial begin
    $monitor("a=%d b=%d → gt=%b lt=%b eq=%b", a, b, gt, lt, eq);
    a=4'd9; b=4'd5; #10;
    a=4'd5; b=4'd9; #10;
    a=4'd7; b=4'd7; #10;
    $finish;
  end
endmodule


