`timescale 1ns / 1ps

module tb_digital_safe;

    reg clk;
    reg rst;
    reg [31:0] entered_code;
    reg [31:0] master_code;
    reg [31:0] duress_code;
    reg reset_code_button;
    reg [31:0] new_code;
    reg confirm_reset;
    wire unlocked;
    wire alert;

    digital_safe uut (
        .clk(clk),
        .rst(rst),
        .entered_code(entered_code),
        .master_code(master_code),
        .duress_code(duress_code),
        .reset_code_button(reset_code_button),
        .new_code(new_code),
        .confirm_reset(confirm_reset),
        .unlocked(unlocked),
        .alert(alert)
    );

    // Clock Generation
    initial begin
        clk = 0;
        forever #10 clk = ~clk; // 50 MHz clock
    end

    initial begin
        // Initialize Inputs
        rst = 1;
        entered_code = 32'h0;
        master_code = 32'h87654321;
        duress_code = 32'h11112222;
        reset_code_button = 0;
        new_code = 32'hAABBCCDD;
        confirm_reset = 0;

        #50;
        rst = 0;

        // Test correct code
        #20;
        entered_code = 32'h12345678;
        #20;

        // Test incorrect attempts
        entered_code = 32'hDEADBEEF; #20;
        entered_code = 32'hCAFEBABE; #20;
        entered_code = 32'hBAD0C0DE; #20;

        // Wait for lock
        #100;

        // Test master code unlock
        entered_code = 32'h87654321; #20;

        // Reset password
        reset_code_button = 1;
        confirm_reset = 1;
        #20;
        reset_code_button = 0;
        confirm_reset = 0;

        // Test with new code
        entered_code = 32'hAABBCCDD; #20;

        // Test duress code
        entered_code = 32'h11112222; #20;

        #100;
        $stop;
    end

endmodule
