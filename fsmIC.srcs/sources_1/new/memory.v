`timescale 1ns / 1ps
module memory(k_address, n_data_in, op, n_data_out);

    input [2:0] k_address;
    input [7:0] n_data_in;
    input op;
    output [7:0] n_data_out;
    
    wire [7:0] select;
    
    decoder3to8 inst1 (k_address, select);
    memory8bit inst2[7:0] (select, n_data_in, op, n_data_out);
    
endmodule
