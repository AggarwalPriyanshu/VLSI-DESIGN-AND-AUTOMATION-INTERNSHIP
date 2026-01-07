module comparator_1bit_tb;
  reg a, b;
  wire gt, lt, eq;
  comparator_1bit uut (.a(a), .b(b), .gt(gt), .lt(lt), .eq(eq));

  initial begin
    $monitor("a=%b b=%b => gt=%b lt=%b eq=%b", a, b, gt, lt, eq);
    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
    $finish;
  end
endmodule

