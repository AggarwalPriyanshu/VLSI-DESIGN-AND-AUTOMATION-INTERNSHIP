
module even_parity_detector(input clk, input rst, input in, output reg parity);
reg state;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= 0;
        parity <= 1;
    end else begin
        state <= state ^ in;
        parity <= ~state;
    end
end
endmodule



