`timescale 1ns / 1ps
module memory(clk, k_address, n_data_in, op, n_data_out, valid);

    input [2:0] k_address;
    input [7:0] n_data_in;
    input op;
    input clk;
    output [7:0] n_data_out;
    output valid;
    
    wire [7:0] select;
    wire rw;
    decoder3to8 inst1 (k_address, select);
    fsmIC inst2[7:0] (clk, op, select, rw, valid);
    memory8bit inst3[7:0] (select, n_data_in, rw, n_data_out);
    
endmodule
