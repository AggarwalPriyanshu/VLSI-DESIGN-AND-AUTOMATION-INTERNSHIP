module comparator_1bit(input a, input b, output gt, lt, eq);
  assign gt = a & ~b;
  assign lt = ~a & b;
  assign eq = ~(gt | lt);
endmodule



