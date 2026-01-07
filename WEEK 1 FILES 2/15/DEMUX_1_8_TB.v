module demux1to8_tb;
    reg d;
    reg [2:0] sel;
    wire [7:0] y;
    demux1to8 uut(.d(d), .sel(sel), .y(y));

    initial begin
        d = 1;
        $monitor("d=%b sel=%b => y=%b", d, sel, y);
        sel = 3'b000; #10;
        sel = 3'b011; #10;
        sel = 3'b111; #10;
        $finish;
    end
endmodule


