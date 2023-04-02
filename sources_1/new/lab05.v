module lab05(
    input clk,
    input [4:0] buttons,
    input [1:0] input_mode,
    input read_mode,
    output [7:0] AN,
    output [6:0] HEX,
    output is199
);
    wire [7:0] number, register_data;
    reg clr;
    reg [7:0] data;
    reg [3:0] addr;
    wire submit;
    reg en_register;
    reg [7:0] value_on_led;
    
    register_16x8 rg1(
        .en(en_register),
        .clk(clk),
        .clr(clr),
        .read_mode(read_mode),
        .data(data),
        .addr(addr),
        .out(register_data)
    );
    
    input_int ii1(
        .clk(clk),
        .return_value(value_on_led),
        .buttons(buttons),
        .input_mode(input_mode),
        .out_number(number),
        .submit(submit)
    );
    
    putint pi1(
        .intnum(value_on_led),
        .clk(clk),
        .AN(AN),
        .HEX(HEX)
    );
    //assign number = 1;
    initial begin
        //number = 1;
        clr = 0;
    end
    
    always @ (*) begin
        if (read_mode) begin
            addr = number;
            en_register = 1;
            en_register <= 0;
        end
    end
endmodule
