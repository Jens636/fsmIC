`timescale 1ns / 1ps

module bitcell(sel, inp, rw, outp);

    input sel, inp, rw;
    output outp;
    
    wire S, R;
    wire Q, Q_neg;
    and(S, sel, inp, ~rw);
    and(R, sel, ~inp, ~rw);
    nand(Q, ~S, Q_neg);
    nand(Q_neg, Q, ~R);
    and(outp, sel, Q, rw);
  
endmodule
