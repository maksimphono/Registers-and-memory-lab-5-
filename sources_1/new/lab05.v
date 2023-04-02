module lab05(
    input clk,
    output [7:0] AN,
    output [6:0] HEX
);
    reg [7:0] number;

    putint pi1(
        .intnum(number),
        .clk(clk),
        .AN(AN),
        .HEX(HEX)
    );
    initial begin
        number = 253;
        
    end
endmodule
