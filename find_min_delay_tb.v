`timescale 1ns / 1ps

module find_min_delay_tb;
    reg [7:0] in;
    wire [7:0] out;
    
    toUpper uut (
        .in(in),
        .out(out)
    );
    
    parameter DELAY = 100;
    
    initial begin
        $dumpfile("min_delay_test.vcd");
        $dumpvars(0, find_min_delay_tb);
        
        $display("========================================");
        $display("Testing with inter-input delay = %0d ns", DELAY);
        $display("========================================\n");
        $display("Time(ns)\tInput\tOutput\tExpected\tResult");
        $display("--------\t-----\t------\t--------\t------");
        
        in = 8'd40; #DELAY;
        $display("%0t\t\t%d\t%d\t%d\t\t%s", $time, in, out, 40, (out==40)?"PASS":"FAIL");
        
        in = 8'd72; #DELAY;
        $display("%0t\t\t%d\t%d\t%d\t\t%s", $time, in, out, 72, (out==72)?"PASS":"FAIL");
        
        in = 8'd183; #DELAY;
        $display("%0t\t\t%d\t%d\t%d\t\t%s", $time, in, out, 183, (out==183)?"PASS":"FAIL");
        
        in = 8'd131; #DELAY;
        $display("%0t\t\t%d\t%d\t%d\t\t%s", $time, in, out, 131, (out==131)?"PASS":"FAIL");
        
        in = 8'd124; #DELAY;
        $display("%0t\t\t%d\t%d\t%d\t\t%s", $time, in, out, 124, (out==124)?"PASS":"FAIL");
        
        in = 8'd20; #DELAY;
        $display("%0t\t\t%d\t%d\t%d\t\t%s", $time, in, out, 20, (out==20)?"PASS":"FAIL");
        
        in = 8'd235; #DELAY;
        $display("%0t\t\t%d\t%d\t%d\t\t%s", $time, in, out, 235, (out==235)?"PASS":"FAIL");
        
        in = 8'd97; #DELAY;
        $display("%0t\t\t%d\t%d\t%d\t\t%s", $time, in, out, 65, (out==65)?"PASS":"FAIL");
        
        in = 8'd65; #DELAY;
        $display("%0t\t\t%d\t%d\t%d\t\t%s", $time, in, out, 65, (out==65)?"PASS":"FAIL");
        
        in = 8'd122; #DELAY;
        $display("%0t\t\t%d\t%d\t%d\t\t%s", $time, in, out, 90, (out==90)?"PASS":"FAIL");
        
        in = 8'd71; #DELAY;
        $display("%0t\t\t%d\t%d\t%d\t\t%s", $time, in, out, 71, (out==71)?"PASS":"FAIL");
        
        in = 8'd109; #DELAY;
        $display("%0t\t\t%d\t%d\t%d\t\t%s", $time, in, out, 77, (out==77)?"PASS":"FAIL");
        
        in = 8'd146; #DELAY;
        $display("%0t\t\t%d\t%d\t%d\t\t%s", $time, in, out, 146, (out==146)?"PASS":"FAIL");
        
        in = 8'd48; #DELAY;
        $display("%0t\t\t%d\t%d\t%d\t\t%s", $time, in, out, 48, (out==48)?"PASS":"FAIL");
        
        in = 8'd207; #DELAY;
        $display("%0t\t\t%d\t%d\t%d\t\t%s", $time, in, out, 207, (out==207)?"PASS":"FAIL");
        
        in = 8'd58; #DELAY;
        $display("%0t\t\t%d\t%d\t%d\t\t%s", $time, in, out, 58, (out==58)?"PASS":"FAIL");
        
        in = 8'd123; #DELAY;
        $display("%0t\t\t%d\t%d\t%d\t\t%s", $time, in, out, 123, (out==123)?"PASS":"FAIL");
        
        in = 8'd148; #DELAY;
        $display("%0t\t\t%d\t%d\t%d\t\t%s", $time, in, out, 148, (out==148)?"PASS":"FAIL");
        
        in = 8'd127; #DELAY;
        $display("%0t\t\t%d\t%d\t%d\t\t%s", $time, in, out, 127, (out==127)?"PASS":"FAIL");
        
        #50;
        $display("\n========================================");
        $display("Test complete with delay = %0d ns", DELAY);
        $display("========================================");
        $finish;
    end
endmodule