module input_int(
    input clk,
    input [4:0] buttons,
    input [1:0] input_mode,
    output reg [7:0] out_number,
    output reg is199
    );
    
    reg [7:0] number;
    reg [31:0] counter;
    reg [31:0] max_counter;
    
    initial begin
        number = 0;
        counter = 1;
        max_counter = 32'd16777215;
    end
    
    always @ (posedge clk) begin
        if (input_mode < 2'b11) begin
            if (counter == max_counter) begin
                case (buttons)
                    5'b10000: begin 
                        //number = number * 8'd10;
                        number = number + 8'd1;
                        $display("Number : %b\n", number);
                    end
                
                endcase
            end
        end
        else begin
            case (buttons)
                5'b10000: number = 8'd0;
                5'b01000: number = (number / 8'd10);
            endcase
        end
        if (counter == max_counter) counter = 0;
        else counter = counter + 1;
        out_number <= number;
    end
    
endmodule
