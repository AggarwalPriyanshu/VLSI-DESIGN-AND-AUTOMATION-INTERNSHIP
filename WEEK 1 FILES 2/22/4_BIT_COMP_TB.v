module comparator4bit_tb;
    reg [3:0] a, b;
    wire gt, eq, lt;
    comparator4bit uut(.a(a), .b(b), .gt(gt), .eq(eq), .lt(lt));

    initial begin
        $monitor("a=%d b=%d => gt=%b eq=%b lt=%b", a, b, gt, eq, lt);
        a=4'd5; b=4'd3; #10;
        a=4'd4; b=4'd4; #10;
        a=4'd2; b=4'd7; #10;
        $finish;
    end
endmodule
