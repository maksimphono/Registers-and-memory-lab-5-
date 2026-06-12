module register_16x8(
    input clk, clr, load,
    input read_mode,
    input [7:0] data,
    input [3:0] addr,
    output reg [7:0] out
    );
    
    reg [7:0] local_memory [15:0];
    
    initial begin
        //$readmemh("C:/Users/Administrator/Desktop/lab05/lab05.srcs/data/mem1.txt", local_memory, 0, 15);
        $readmemh("D:/data/mem1.txt", local_memory, 0, 15);
    end
    
    always @ (read_mode or addr) begin
        if (load == 0)
            if (read_mode)
                out <= local_memory[addr];
        
    end
    
    always @ (posedge clk) begin
        if (clr) local_memory[addr] <= 0;
        if (load) begin    
            if (read_mode == 0)
                local_memory[addr] <= data;
        end
        
    end
    
    //assign out = local_memory[addr];
endmodule
