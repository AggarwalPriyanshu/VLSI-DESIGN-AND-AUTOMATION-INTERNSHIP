module comparator2bit_tb;
    reg [1:0] a, b;
    wire gt, eq, lt;

    comparator2bit uut(.a(a), .b(b), .gt(gt), .eq(eq), .lt(lt));

    initial begin
        $monitor("a=%b b=%b => gt=%b eq=%b lt=%b", a, b, gt, eq, lt);
        a = 2'b00; b = 2'b01; #10;
        a = 2'b11; b = 2'b10; #10;
        a = 2'b01; b = 2'b01; #10;
        $finish;
    end
endmodule


