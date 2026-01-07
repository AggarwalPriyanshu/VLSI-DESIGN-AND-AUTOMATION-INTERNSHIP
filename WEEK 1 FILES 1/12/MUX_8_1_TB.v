
module mux8to1_tb;
    reg [7:0] in;
    reg [2:0] sel;
    wire y;
    mux8to1 uut(.in(in), .sel(sel), .y(y));

    initial begin
        in = 8'b11001100;
        $monitor("in=%b sel=%b => y=%b", in, sel, y);
        sel = 3'b000; #10;
        sel = 3'b001; #10;
        sel = 3'b010; #10;
        sel = 3'b111; #10;
        $finish;
    end
endmodule


