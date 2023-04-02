module lab05(
    input clk,
    input [4:0] buttons,
    input [1:0] input_mode,
    output [7:0] AN,
    output [6:0] HEX,
    output is199
);
    wire [7:0] number;
    
    input_int ii1(
        .clk(clk),
        .buttons(buttons),
        .input_mode(input_mode),
        .out_number(number),
        .is199(is199)
    );
    
    putint pi1(
        .intnum(number),
        .clk(clk),
        .AN(AN),
        .HEX(HEX)
    );
    //assign number = 1;
    initial begin
        //number = 1;
    end
endmodule
