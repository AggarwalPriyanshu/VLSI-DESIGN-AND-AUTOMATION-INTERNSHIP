
module uart_tx(input clk, input start, input [7:0] data, output reg tx);
reg [3:0] state = 0;
reg [7:0] shift;

always @(posedge clk) begin
    case(state)
        0: if (start) begin
               tx <= 0; // Start bit
               shift <= data;
               state <= 1;
           end
        1,2,3,4,5,6,7,8: begin
               tx <= shift[0];
               shift <= shift >> 1;
               state <= state + 1;
           end
        9: begin
               tx <= 1; // Stop bit
               state <= 0;
           end
    endcase
end
endmodule



