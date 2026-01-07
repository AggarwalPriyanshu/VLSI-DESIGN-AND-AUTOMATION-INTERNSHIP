module traffic_light_ctrl_tb;
reg clk = 0, rst, ped;
wire [1:0] light;
wire walk;

traffic_light_ctrl uut(.clk(clk), .rst(rst), .ped(ped), .light(light), .walk(walk));
always #5 clk = ~clk;

initial begin
    rst = 1; ped = 0; #10;
    rst = 0; ped = 1; #100;
    $finish;
end

initial $monitor("Time=%t Light=%b Walk=%b", $time, light, walk);
endmodule


