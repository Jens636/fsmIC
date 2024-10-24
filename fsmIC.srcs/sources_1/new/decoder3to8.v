`timescale 1ns / 1ps

module decoder3to8(k_address, select);
    input [2:0] k_address;
    output [7:0] select;
    
    and(select[0], ~k_address[2], ~k_address[1], ~k_address[0]);
    and(select[1], ~k_address[2], ~k_address[1], k_address[0]);
    and(select[2], ~k_address[2], k_address[1], ~k_address[0]);
    and(select[3], ~k_address[2], k_address[1], k_address[0]);
    and(select[4], k_address[2], ~k_address[1], ~k_address[0]);
    and(select[5], k_address[2], ~k_address[1], k_address[0]);
    and(select[6], k_address[2], k_address[1], ~k_address[0]);
    and(select[7], k_address[2], k_address[1], k_address[0]);
endmodule
