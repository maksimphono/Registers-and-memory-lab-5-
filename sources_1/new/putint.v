module bcd7seg (
    input [3:0] number,
    output reg [6:0] F
);
    always @(*) begin
        F = 4'd0;
        case (number)
            4'd9: F = 7'b0010000;
            4'd8: F = 7'b0000000;
            4'd7: F = 7'b1111000;
            4'd6: F = 7'b0000010;
            4'd5: F = 7'b0010010;
            4'd4: F = 7'b0011001; //
            4'd3: F = 7'b0110000;
            4'd2: F = 7'b0100100;
            4'd1: F = 7'b1111001;
            4'd0: F = 7'b1000000;
            default: F = 7'b1001001;
        endcase
    end
endmodule

module putint(input [7:0] intnum, input clk, output reg [7:0] AN, output [6:0] HEX);
    reg [3:0] number;
    reg [17:0] counter;
    reg [7:0] temp;
    reg [17:0] max_count;
    reg [17:0] render_first_digit;
    reg [17:0] render_second_digit;
    
    bcd7seg bcd1(
        .number(number),
        .F(HEX)
    );
    
    initial begin
        max_count = 18'd262143;
        render_first_digit = (max_count / 3);
        render_second_digit = (max_count / 3) * 2;
        counter = 2'b0;
        number = 4'd0;
    end
    
    always @ (posedge clk) begin // clk -> posedge clk, remove intnum
        //number = 4'd0;
        case (counter)
            (render_first_digit): begin
                temp = intnum / 8'd100;
                AN = 8'b11111011;
                number = temp[3:0];
            end
            render_second_digit: begin
                temp = (intnum / 8'd10) % 10;
                AN = 8'b11111101;
                number = temp[3:0];
            end
            max_count: begin
                temp = intnum % 8'b00001010;
                AN = 8'b11111110;
                number = temp[3:0];
                counter = 18'd0;
            end
        endcase
        counter = counter + 1;
    end
endmodule
