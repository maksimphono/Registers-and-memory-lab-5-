module leds_with_switches(
    input read_mode,
    input [3:0] SW,
    output [4:0] LED
    
    );
    
    assign LED[0] = read_mode;
    assign LED[4:1] = SW;
    
endmodule
