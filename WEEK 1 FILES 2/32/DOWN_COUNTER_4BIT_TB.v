module down_counter_4bit_tb;
    reg clk, rst;
    wire [3:0] count;

    down_counter_4bit uut(.clk(clk), .rst(rst), .count(count));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1; #10;
        rst = 0; #50;
        rst = 1; #10;
        rst = 0; #40;
        $finish;
    end

    initial $monitor("Time=%0t clk=%b rst=%b count=%b", $time, clk, rst, count);
endmodule


