
module carry_lookahead_adder_4bit_tb;
  reg [3:0] a, b;
  reg cin;
  wire [3:0] sum;
  wire cout;

  carry_lookahead_adder_4bit uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

  initial begin
    $monitor("a=%b b=%b cin=%b → sum=%b cout=%b", a, b, cin, sum, cout);
    a = 4'b1101; b = 4'b0110; cin = 0; #10;
    a = 4'b1010; b = 4'b0011; cin = 1; #10;
    $finish;
  end
endmodule



