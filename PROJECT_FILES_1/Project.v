`timescale 1ns / 1ps
module digital_safe (
    input clk,
    input rst,
    input [31:0] entered_code,
    input [31:0] master_code,
    input [31:0] duress_code,
    input reset_code_button,
    input [31:0] new_code,
    input confirm_reset,
    output reg unlocked,
    output reg alert
);

    reg [1:0] attempts;
    reg [31:0] current_code;
    reg locked;
    reg [19:0] lock_timer;

    localparam MAX_ATTEMPTS = 2'd3;
    localparam LOCK_TIME = 20'd15_000_000; // Adjust as per clock frequency (e.g., ~5 min for 50MHz)

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            current_code <= 32'h12345678;
            attempts <= 0;
            locked <= 0;
            lock_timer <= 0;
            unlocked <= 0;
            alert <= 0;
        end else begin
            if (locked) begin
                if (lock_timer > 0)
                    lock_timer <= lock_timer - 1;
                else begin
                    locked <= 0;
                    attempts <= 0;
                end
            end else if (reset_code_button && confirm_reset) begin
                current_code <= new_code;
            end else begin
                if (entered_code == current_code || entered_code == master_code) begin
                    unlocked <= 1;
                    alert <= 0;
                    attempts <= 0;
                end else if (entered_code == duress_code) begin
                    unlocked <= 1;
                    alert <= 1;
                    attempts <= 0;
                end else begin
                    attempts <= attempts + 1;
                    if (attempts == MAX_ATTEMPTS - 1) begin
                        locked <= 1;
                        lock_timer <= LOCK_TIME;
                        unlocked <= 0;
                        alert <= 0;
                    end
                end
            end
        end
    end

endmodule




