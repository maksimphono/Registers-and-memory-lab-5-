module lab05(
    input clk,
    input [4:0] buttons,
    input [1:0] input_mode,
    input read_mode,
    input [3:0] addr,
    output [4:0] LED,
    output [7:0] AN,
    output [6:0] HEX
);
    wire [7:0] number, mem_data;
    reg clr;
    reg en_register;
    reg enable_input;
    reg load;
    wire [7:0] value_on_led;
    
    leds_with_switches lws(
        .read_mode(read_mode),
        .SW(addr),
        .LED(LED)
    );
    
   blk_mem_gen_0 ram_1(
        .addra(addr),
        .clka(clk),
        .dina(number),
        .douta(mem_data),
        .ena(1'b1),
        .wea(load)
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

    assign value_on_led = (read_mode)?mem_data:number;

    initial begin
        clr = 0;
        enable_input = 1'b1;
        en_register = 1'b1;
        load = 0;
    end
    
    always @ (*) begin
        if (input_mode == 2'b11 && buttons == 5'b00100 && read_mode == 1'b0) begin
            load = 1;
        end else begin
            load = 0;
        end
    end
endmodule
