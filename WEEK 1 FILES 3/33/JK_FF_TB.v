module jk_ff_tb;
    reg j, k, clk, rst;
    wire q;

    jk_ff uut(.j(j), .k(k), .clk(clk), .rst(rst), .q(q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1; #10; rst = 0;
        j = 0; k = 0; #10;
        j = 1; k = 0; #10;
        j = 0; k = 1; #10;
        j = 1; k = 1; #10;
        $finish;
    end

    initial $monitor("j=%b k=%b clk=%b q=%b", j, k, clk, q);
endmodule

