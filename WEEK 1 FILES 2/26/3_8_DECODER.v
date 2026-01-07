module decoder3to8_tb;
    reg [2:0] in;
    wire [7:0] out;
    decoder3to8 uut(.in(in), .out(out));

    initial begin
        $monitor("in=%b => out=%b", in, out);
        in = 3'b000; #10;
        in = 3'b011; #10;
        in = 3'b111; #10;
        $finish;
    end
endmodule

