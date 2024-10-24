`timescale 1ns / 1ps

module fsmIC(clk, op, sel, rw, valid, QA, QB);
    input clk, op, sel;
    output rw, valid;
    output reg QA;
    output reg QB;
    
    wire QA_temp, QB_temp;
    
    always@(posedge clk)
        QA <= (~QA & QB) | (~op & sel);
    
    always@(posedge clk)
        QB <= (~QB & sel) | (QA & sel);
 
    assign rw = ~QA | ~QB; // or(rw, not(QA), not(QB))
    assign valid = QB; 
endmodule