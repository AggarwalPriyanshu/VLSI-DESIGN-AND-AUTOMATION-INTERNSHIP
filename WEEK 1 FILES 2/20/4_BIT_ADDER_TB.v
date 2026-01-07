module adder4bit_tb;
    reg [3:0] a, b;
    wire [4:0] sum;
    adder4bit uut(.a(a), .b(b), .sum(sum));

    initial begin
        $monitor("a=%d b=%d => sum=%d", a, b, sum);
        a=4'd5; b=4'd3; #10;
        a=4'd7; b=4'd9; #10;
        a=4'd15; b=4'd1; #10;
        $finish;
    end
endmodule

