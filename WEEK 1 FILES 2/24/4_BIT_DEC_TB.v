module decrementer4bit_tb;
    reg [3:0] a;
    wire [3:0] y;
    decrementer4bit uut(.a(a), .y(y));

    initial begin
        $monitor("a=%d => y=%d", a, y);
        a = 4'd1; #10;
        a = 4'd8; #10;
        a = 4'd0; #10;
        $finish;
    end
endmodule



