module lab05(
    input clk,
    input [4:0] buttons,
    input [1:0] input_mode,
    input read_mode,
    input [3:0] addr,
    output [7:0] AN,
    output [6:0] HEX,
    output is199
);
    wire [7:0] number, register_data;
    reg clr;
    reg [7:0] data;
    wire submit;
    reg en_register;
    reg enable_input;
    wire [7:0] value_on_led;
    
    register_16x8 rg1(
        .en_register(en_register),
        .clk(clk),
        .clr(clr),
        .read_mode(read_mode),
        .data(data),
        .addr(addr),
        .out(register_data)
    );
    
    input_int ii1(
        .clk(clk),
        .en(enable_input),
        .buttons(buttons),
        .input_mode(input_mode),
        .out_number(number)
    );
    
    
    putint pi1(
        .intnum(value_on_led),
        .clk(clk),
        .AN(AN),
        .HEX(HEX)
    );
    assign register_data = 234;
    assign value_on_led = (read_mode)?register_data:(8'd0 | addr);
    initial begin
        //number = 1;
        clr = 0;
        enable_input = 1'b0;
    end
    
    always @ (*) begin
    
    end
endmodule
