module uart_tx_tb;
reg clk = 0;
reg start;
reg [7:0] data;
wire tx;

uart_tx uut(.clk(clk), .start(start), .data(data), .tx(tx));
always #5 clk = ~clk;

initial begin
    start = 0; data = 8'hA5; #20;
    start = 1; #10;
    start = 0; #200;
    $finish;
end

initial $monitor("Time=%t TX=%b", $time, tx);
endmodule


