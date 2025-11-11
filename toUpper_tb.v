`timescale 1ns / 1ps

module toUpper_tb;
    reg [7:0] ascii_in;
    wire [7:0] ascii_out;
    
    toUpper uut(ascii_in, ascii_out);
    
    initial begin
        $dumpfile("toUpper_tb.vcd");
        $dumpvars(0, toUpper_tb);
        
        ascii_in = 8'd0;
        #10;
        
        ascii_in = 8'd40;
        #50;
        $display("Input: %d (%c) -> Output: %d (%c)", ascii_in, ascii_in, ascii_out, ascii_out);
        
        ascii_in = 8'd72;
        #50;
        $display("Input: %d (%c) -> Output: %d (%c)", ascii_in, ascii_in, ascii_out, ascii_out);
        
        ascii_in = 8'd183;
        #50;
        $display("Input: %d (%c) -> Output: %d (%c)", ascii_in, ascii_in, ascii_out, ascii_out);
        
        ascii_in = 8'd131;
        #50;
        $display("Input: %d (%c) -> Output: %d (%c)", ascii_in, ascii_in, ascii_out, ascii_out);
        
        ascii_in = 8'd124;
        #50;
        $display("Input: %d (%c) -> Output: %d (%c)", ascii_in, ascii_in, ascii_out, ascii_out);
        
        ascii_in = 8'd20;
        #50;
        $display("Input: %d (%c) -> Output: %d (%c)", ascii_in, ascii_in, ascii_out, ascii_out);
        
        ascii_in = 8'd235;
        #50;
        $display("Input: %d (%c) -> Output: %d (%c)", ascii_in, ascii_in, ascii_out, ascii_out);
        
        ascii_in = 8'd97;
        #50;
        $display("Input: %d (%c) -> Output: %d (%c)", ascii_in, ascii_in, ascii_out, ascii_out);
        
        ascii_in = 8'd65;
        #50;
        $display("Input: %d (%c) -> Output: %d (%c)", ascii_in, ascii_in, ascii_out, ascii_out);
        
        ascii_in = 8'd122;
        #50;
        $display("Input: %d (%c) -> Output: %d (%c)", ascii_in, ascii_in, ascii_out, ascii_out);
        
        ascii_in = 8'd71;
        #50;
        $display("Input: %d (%c) -> Output: %d (%c)", ascii_in, ascii_in, ascii_out, ascii_out);
        
        ascii_in = 8'd109;
        #50;
        $display("Input: %d (%c) -> Output: %d (%c)", ascii_in, ascii_in, ascii_out, ascii_out);
        
        ascii_in = 8'd146;
        #50;
        $display("Input: %d (%c) -> Output: %d (%c)", ascii_in, ascii_in, ascii_out, ascii_out);
        
        ascii_in = 8'd48;
        #50;
        $display("Input: %d (%c) -> Output: %d (%c)", ascii_in, ascii_in, ascii_out, ascii_out);
        
        ascii_in = 8'd207;
        #50;
        $display("Input: %d (%c) -> Output: %d (%c)", ascii_in, ascii_in, ascii_out, ascii_out);
        
        ascii_in = 8'd58;
        #50;
        $display("Input: %d (%c) -> Output: %d (%c)", ascii_in, ascii_in, ascii_out, ascii_out);
        
        ascii_in = 8'd123;
        #50;
        $display("Input: %d (%c) -> Output: %d (%c)", ascii_in, ascii_in, ascii_out, ascii_out);
        
        ascii_in = 8'd148;
        #50;
        $display("Input: %d (%c) -> Output: %d (%c)", ascii_in, ascii_in, ascii_out, ascii_out);
        
        ascii_in = 8'd127;
        #50;
        $display("Input: %d (%c) -> Output: %d (%c)", ascii_in, ascii_in, ascii_out, ascii_out);
        
        #50;
        $finish;
    end
endmodule