
module traffic_light_ctrl(
    input clk, input rst, input ped,
    output reg [1:0] light, // 00=Red, 01=Yellow, 10=Green
    output reg walk
);
reg [3:0] timer = 0;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        light <= 2'b00;
        walk <= 0;
        timer <= 0;
    end else begin
        timer <= timer + 1;
        case (timer)
            0: begin light <= 2'b10; walk <= 0; end
            5: begin if (ped) begin light <= 2'b01; walk <= 0; end end
            6: begin if (ped) begin light <= 2'b00; walk <= 1; end end
            9: begin light <= 2'b10; walk <= 0; timer <= 0; end
        endcase
    end
end
endmodule



