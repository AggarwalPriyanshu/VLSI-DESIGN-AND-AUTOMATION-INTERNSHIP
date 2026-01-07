module decoder2to4_tb;
    reg [1:0] in;
    wire [3:0] out;
    decoder2to4 uut(.in(in), .out(out));

    initial begin
        $monitor("in=%b => out=%b", in, out);
        in = 2'b00; #10;
        in = 2'b01; #10;
        in = 2'b10; #10;
        in = 2'b11; #10;
        $finish;
    end
endmodule


