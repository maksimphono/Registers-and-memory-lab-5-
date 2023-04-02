`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/02 13:25:03
// Design Name: 
// Module Name: lab05_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lab05_test(
    );
    reg [7:0] number;
    reg clk;
    reg [7:0] AN;
    reg [6:0] HEX;
    
    putint pi1(
        .intnum(number),
        .clk(clk),
        .AN(AN),
        .HEX(HEX)
    );
    
    initial begin
        clk = 0;
        number = 23;
        forever
            clk = ~clk;
    end
endmodule
