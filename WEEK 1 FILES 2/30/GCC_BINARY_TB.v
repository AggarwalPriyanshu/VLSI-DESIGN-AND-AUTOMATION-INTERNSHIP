module gray_to_binary_tb;
    reg [3:0] gray;
    wire [3:0] bin;
    gray_to_binary uut(.gray(gray), .bin(bin));

    initial begin
        $monitor("gray=%b => bin=%b", gray, bin);
        gray = 4'b0000; #10;
        gray = 4'b0111; #10;
        gray = 4'b1111; #10;
        $finish;
    end
endmodule

