module demux1to2(input d, input sel, output y0, output y1);
    assign y0 = (~sel) & d;
    assign y1 = sel & d;
endmodule


