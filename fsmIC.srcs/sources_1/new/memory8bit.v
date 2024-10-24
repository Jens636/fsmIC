`timescale 1ns / 1ps

module memory8bit(select, data_in, op, data_out);
    input select;
    input [7:0] data_in;
    input op;
    output [7:0] data_out;
    
    bitcell inst1 [7:0] (select, data_in, op, data_out);
endmodule
