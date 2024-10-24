`timescale 1ns / 1ps

module tb_memory;
    
    reg [2:0] t_k;
    reg [7:0] t_indata;
    reg t_op;
    wire [7:0] t_outdata;
    
    memory M2 (
        .k_address (t_k),
        .n_data_in (t_indata),
        .op (t_op),
        .n_data_out (t_outdata)
        );
        
   always #30 t_op = ~t_op;     
   
   initial begin
    #800 $finish;
   end
   
   initial begin
        t_k = 3'b000;
        t_indata = 8'b00000000;
        t_op = 1'b0;
   end
   
   initial begin
        #100;
        t_indata = 8'b00100110;
        t_k = 3'b010;
        #10;
        t_indata = 8'b11111111;
        #20;
        t_k = 3'b111;
   end
   
    
    
endmodule
