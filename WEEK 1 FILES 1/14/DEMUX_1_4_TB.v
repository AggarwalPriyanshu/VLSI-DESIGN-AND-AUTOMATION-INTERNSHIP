module demux1to4_tb;
    reg d;
    reg [1:0] sel;
    wire [3:0] y;
    demux1to4 uut(.d(d), .sel(sel), .y(y));

    initial begin
        d = 1;
        $monitor("d=%b sel=%b => y=%b", d, sel, y);
        sel=2'b00; #10;
        sel=2'b01; #10;
        sel=2'b10; #10;
        sel=2'b11; #10;
        $finish;
    end
endmodule

