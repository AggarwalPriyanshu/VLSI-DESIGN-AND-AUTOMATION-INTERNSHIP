module incrementer4bit_tb;
    reg [3:0] a;
    wire [3:0] y;
    incrementer4bit uut(.a(a), .y(y));

    initial begin
        $monitor("a=%d => y=%d", a, y);
        a = 4'd0; #10;
        a = 4'd7; #10;
        a = 4'd15; #10;
        $finish;
    end
endmodule



