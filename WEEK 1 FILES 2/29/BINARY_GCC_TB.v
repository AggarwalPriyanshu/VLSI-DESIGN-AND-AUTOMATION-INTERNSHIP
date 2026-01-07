module binary_to_gray_tb;
    reg [3:0] bin;
    wire [3:0] gray;
    binary_to_gray uut(.bin(bin), .gray(gray));

    initial begin
        $monitor("bin=%b => gray=%b", bin, gray);
        bin = 4'b0000; #10;
        bin = 4'b0101; #10;
        bin = 4'b1010; #10;
        $finish;
    end
endmodule


