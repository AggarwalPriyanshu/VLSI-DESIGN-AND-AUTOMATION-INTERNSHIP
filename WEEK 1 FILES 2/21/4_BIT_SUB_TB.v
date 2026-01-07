module subtractor4bit_tb;
    reg [3:0] a, b;
    wire [4:0] diff;
    subtractor4bit uut(.a(a), .b(b), .diff(diff));

    initial begin
        $monitor("a=%d b=%d => diff=%d", a, b, diff);
        a=4'd10; b=4'd3; #10;
        a=4'd5; b=4'd7; #10;
        a=4'd15; b=4'd15; #10;
        $finish;
    end
endmodule


