`timescale 1ns / 1ps

module toUpper(
    input [7:0] in,         // 8-bit ASCII input
    output [7:0] out        // 8-bit ASCII output
);

    wire not_i7, not_i4, not_i3, not_i2, not_i1, not_i0;
    wire all_zeros, too_large;
    wire temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10;
    wire in_range, is_lower;
    wire not_is_lower;
    wire tl_part1, tl_part2, tl_part3;
    
    not #5 n0(not_i7, in[7]);
    not #5 n1(not_i4, in[4]);
    not #5 n2(not_i3, in[3]);
    not #5 n3(not_i2, in[2]);
    not #5 n4(not_i1, in[1]);
    not #5 n5(not_i0, in[0]);
    
    and #10 a1(temp1, not_i4, not_i3);
    and #10 a2(temp2, not_i2, not_i1);
    and #10 a3(temp3, temp1, temp2);
    and #10 a4(all_zeros, temp3, not_i0);
    
    and #10 a5(tl_part1, in[4], in[3]);
    and #10 a6(tl_part2, tl_part1, in[2]);
    and #10 a7(temp4, in[1], in[0]);
    and #10 a8(temp5, not_i2, temp4);
    and #10 a9(tl_part3, tl_part1, temp5);
    or #10 o1(too_large, tl_part2, tl_part3);
    
    or #10 o2(temp6, all_zeros, too_large);
    not #5 n6(in_range, temp6);
    
    and #10 a10(temp7, not_i7, in[6]);
    and #10 a11(temp8, in[5], in_range);
    and #10 a12(is_lower, temp7, temp8);
    
    not #5 n7(not_is_lower, is_lower);
    
    buf #4 b0(out[7], in[7]);
    buf #4 b1(out[6], in[6]);
    buf #4 b2(out[4], in[4]);
    buf #4 b3(out[3], in[3]);
    buf #4 b4(out[2], in[2]);
    buf #4 b5(out[1], in[1]);
    buf #4 b6(out[0], in[0]);
    
    and #10 a13(out[5], in[5], not_is_lower);

endmodule