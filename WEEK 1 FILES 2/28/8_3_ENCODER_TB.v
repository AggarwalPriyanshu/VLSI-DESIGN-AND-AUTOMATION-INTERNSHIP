module encoder8to3_tb;
    reg [7:0] in;
    wire [2:0] out;
    encoder8to3 uut(.in(in), .out(out));

    initial begin
        $monitor("in=%b => out=%b", in, out);
        in = 8'b00000001; #10;
        in = 8'b00000100; #10;
        in = 8'b01000000; #10;
        in = 8'b10000000; #10;
        $finish;
    end
endmodule


