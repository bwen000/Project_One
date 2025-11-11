`timescale 1ns / 1ps

module toUpper(ascii_in, ascii_out);
    input [7:0] ascii_in;
    output [7:0] ascii_out;
    
    wire [7:0] n;
    wire [7:0] term;
    
    not #5 n0(n[0], ascii_in[0]);
    not #5 n1(n[1], ascii_in[1]);
    not #5 n2(n[2], ascii_in[2]);
    not #5 n3(n[3], ascii_in[3]);
    not #5 n4(n[4], ascii_in[4]);
    not #5 n6(n[6], ascii_in[6]);
    not #5 n7(n[7], ascii_in[7]);
    
    and #10 t0(term[0], ascii_in[5], ascii_in[7]);
    and #10 t1(term[1], ascii_in[5], n[6], n[7]);
    and #10 t2(term[2], n[7], ascii_in[6], ascii_in[5], n[4], n[3], n[2], n[1], n[0]);
    and #10 t3(term[3], n[7], ascii_in[6], ascii_in[5], ascii_in[4], ascii_in[3], n[2], ascii_in[1], ascii_in[0]);
    and #10 t4(term[4], n[7], ascii_in[6], ascii_in[5], ascii_in[4], ascii_in[3], ascii_in[2], n[1], n[0]);
    and #10 t5(term[5], n[7], ascii_in[6], ascii_in[5], ascii_in[4], ascii_in[3], ascii_in[2], n[1], ascii_in[0]);
    and #10 t6(term[6], n[7], ascii_in[6], ascii_in[5], ascii_in[4], ascii_in[3], ascii_in[2], ascii_in[1], n[0]);
    and #10 t7(term[7], n[7], ascii_in[6], ascii_in[5], ascii_in[4], ascii_in[3], ascii_in[2], ascii_in[1], ascii_in[0]);
    
    or #10 out5(ascii_out[5], term[0], term[1], term[2], term[3], term[4], term[5], term[6], term[7]);
    
    buf #4 b0(ascii_out[0], ascii_in[0]);
    buf #4 b1(ascii_out[1], ascii_in[1]);
    buf #4 b2(ascii_out[2], ascii_in[2]);
    buf #4 b3(ascii_out[3], ascii_in[3]);
    buf #4 b4(ascii_out[4], ascii_in[4]);
    buf #4 b6(ascii_out[6], ascii_in[6]);
    buf #4 b7(ascii_out[7], ascii_in[7]);
endmodule