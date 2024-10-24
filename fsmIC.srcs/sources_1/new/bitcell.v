`timescale 1ns / 1ps

module bitcell(sel, inp, rw, outp);

    input sel, inp, rw;
    output outp;
	
    wire S, R;
    wire Q, Q_neg;
    
    nand(S, sel, inp, rw);
    nand(R, sel, ~inp, rw);
    
    SR_latch inst1 (S, R, Q, Q_neg);
    and(outp, sel, Q, ~rw);
  
endmodule
