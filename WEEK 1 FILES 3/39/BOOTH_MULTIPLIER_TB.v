module booth_multiplier_tb;
  reg [3:0] multiplicand, multiplier;
  wire [7:0] product;
  booth_multiplier uut (.multiplicand(multiplicand), .multiplier(multiplier), .product(product));

  initial begin
    $monitor("Multiplicand=%d, Multiplier=%d → Product=%d", multiplicand, multiplier, product);
    multiplicand = 4'd3; multiplier = 4'd2; #10;
    multiplicand = 4'd5; multiplier = 4'd7; #10;
    multiplicand = 4'd8; multiplier = 4'd4; #10;
    $finish;
  end
endmodule


