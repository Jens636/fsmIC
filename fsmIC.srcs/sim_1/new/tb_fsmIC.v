`timescale 1ns / 1ps

module tb_fsmIC;

    reg t_clk, t_op, t_sel;
    wire t_rw, t_valid, t_QA, t_QB;
    
    fsmIC M1 (
        .clk (t_clk),
        .op (t_op),
        .sel (t_sel),
        .rw (t_rw),
        .valid (t_valid),
        .QA (t_QA),
        .QB (t_QB)
        );
    
    initial begin
        #800 $finish;
    end
    
    always begin
        #2
        t_clk = 1'b1;
        #2
        t_clk = 1'b0;
    end
    
    initial begin
        t_op = 1'b0;
        t_sel = 1'b0;
    end
    
    always #5 t_op = ~t_op;
    always #11 t_sel = ~t_sel;
endmodule

