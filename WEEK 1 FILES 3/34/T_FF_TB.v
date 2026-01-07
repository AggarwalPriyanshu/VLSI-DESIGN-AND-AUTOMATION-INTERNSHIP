module t_ff_tb;
    reg t, clk, rst;
    wire q;

    t_ff uut(.t(t), .clk(clk), .rst(rst), .q(q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1; #10; rst = 0;
        t = 0; #10;
        t = 1; #20;
        t = 0; #10;
        t = 1; #20;
        $finish;
    end

    initial $monitor("t=%b clk=%b q=%b", t, clk, q);
endmodule


