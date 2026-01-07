module even_parity_detector_tb;
reg clk = 0, rst, in;
wire parity;

even_parity_detector uut(.clk(clk), .rst(rst), .in(in), .parity(parity));
always #5 clk = ~clk;

initial begin
    rst = 1; in = 0; #10;
    rst = 0;
    in = 1; #10; in = 0; #10; in = 1; #10; in = 1; #10;
    $finish;
end

initial $monitor("Time=%t In=%b Parity=%b", $time, in, parity);
endmodule


