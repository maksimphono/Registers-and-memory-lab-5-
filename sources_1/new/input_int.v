module input_int(
    input clk,
    input en,
    input [4:0] buttons,
    input [1:0] input_mode,
    output reg [7:0] out_number
    );
    
    reg [7:0] number;
    reg [23:0] counter;
    reg [23:0] max_counter;
    
    initial begin
        number = 0;
        counter = 1;
        max_counter = 24'd16777215;
    end
    
    always @ (posedge clk) begin
        if (en) begin
        if (counter == max_counter) begin
            if (input_mode == 2'b00) begin
                case (buttons)
                    5'b10000: number = number * 8'd10;
                    5'b01000: number = number * 8'd10 + 8'd1;
                    5'b00100: number = number * 8'd10 + 8'd2;
                    5'b00010: number = number * 8'd10 + 8'd3;
                    5'b00001: number = number * 8'd10 + 8'd4;
                endcase
            
            end
            else if (input_mode == 2'b01) begin
                case (buttons)
                    5'b10000: number = number * 8'd10 + 8'd5;
                    5'b01000: number = number * 8'd10 + 8'd6;
                    5'b00100: number = number * 8'd10 + 8'd7;
                    5'b00010: number = number * 8'd10 + 8'd8;
                    5'b00001: number = number * 8'd10 + 8'd9;
                endcase
            end
            else if (input_mode == 2'b11) begin
                case (buttons)
                    5'b10000: number = 8'd0;
                    5'b01000: number = (number / 8'd10);
                endcase
            end
        end
        if (counter == max_counter) counter = 0;
        else counter = counter + 1;
        
        out_number <= number;
        end
    end
    
endmodule
