
module demux1to8(input d, input [2:0] sel, output [7:0] y);
    assign y = (1 << sel) * d;
endmodule


