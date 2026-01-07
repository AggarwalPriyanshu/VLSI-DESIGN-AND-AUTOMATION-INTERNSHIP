module bcd_to_7seg_tb;
reg [3:0] bcd;
wire [6:0] seg;

bcd_to_7seg uut(.bcd(bcd), .seg(seg));

initial begin
    $monitor("BCD=%d -> SEG=%b", bcd, seg);
    for (bcd = 0; bcd < 10; bcd = bcd + 1) #10;
end
endmodule


