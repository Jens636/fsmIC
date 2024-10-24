`timescale 1ns / 1ps

module SR_latch(S, R, Q, Q_neg);
    input wire S, R;
    output wire Q, Q_neg;
    
    nand(Q, S, Q_neg);
    nand(Q_neg, R, Q);
endmodule