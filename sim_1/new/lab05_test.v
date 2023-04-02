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
    wire [7:0] number;
    reg clk;
    reg [4:0] buttons;
    reg [1:0] input_mode;
    wire [7:0] AN;
    wire [6:0] HEX;
    
    lab05 l1(
        .clk(clk),
        .buttons(buttons),
        .input_mode(input_mode),
        .AN(AN),
        .HEX(HEX)
    );
    /*
    input_int ii1(
        .buttons(buttons),
        .input_mode(input_mode),
        .out_number(number)
    );
    
    putint pi1(
        .intnum(number),
        .clk(clk),
        .AN(AN),
        .HEX(HEX)
    );
    */
    initial begin
        clk = 0;
        input_mode = 1;
        
        //buttons = 5'b00000; #10;
        buttons = 5'b10000; #10;
        forever begin
            
            clk = ~clk; #10;
        end
        
        
    end
endmodule
