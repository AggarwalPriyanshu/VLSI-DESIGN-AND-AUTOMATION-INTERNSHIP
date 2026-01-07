module and4_tb;
    reg a, b, c, d;
    wire y;
    and4 uut(.a(a), .b(b), .c(c), .d(d), .y(y));

    initial begin
        $monitor("a=%b, b=%b, c=%b, d=%b => y=%b", a, b, c, d, y);
        {a,b,c,d}=4'b0000; #10;
        {a,b,c,d}=4'b1111; #10;
        {a,b,c,d}=4'b1101; #10;
        $finish;
    end
endmodule

