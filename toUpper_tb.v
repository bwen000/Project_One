`timescale 1ns / 1ps

module toUpper_tb;
    reg [7:0] in;
    wire [7:0] out;
    
    toUpper uut (
        .in(in),
        .out(out)
    );
    
    initial begin
        $dumpfile("toupper_waveform.vcd");
        $dumpvars(0, toUpper_tb);
        
        $display("Time\tInput\tOutput\tExpected");
        $display("====\t=====\t======\t========");
        
        in = 8'd40;
        #100;
        $display("%0t\t%d\t%d\t%d", $time, in, out, 40);
        
        in = 8'd72;
        #100;
        $display("%0t\t%d\t%d\t%d", $time, in, out, 72);
        
        in = 8'd183;
        #100;
        $display("%0t\t%d\t%d\t%d", $time, in, out, 183);
        
        in = 8'd131;
        #100;
        $display("%0t\t%d\t%d\t%d", $time, in, out, 131);
        
        in = 8'd124;
        #100;
        $display("%0t\t%d\t%d\t%d", $time, in, out, 124);
        
        in = 8'd20;
        #100;
        $display("%0t\t%d\t%d\t%d", $time, in, out, 20);
        
        in = 8'd235;
        #100;
        $display("%0t\t%d\t%d\t%d", $time, in, out, 235);
        
        in = 8'd97;
        #100;
        $display("%0t\t%d\t%d\t%d", $time, in, out, 65);
        
        in = 8'd65;
        #100;
        $display("%0t\t%d\t%d\t%d", $time, in, out, 65);
        
        in = 8'd122;
        #100;
        $display("%0t\t%d\t%d\t%d", $time, in, out, 90);
        
        in = 8'd71;
        #100;
        $display("%0t\t%d\t%d\t%d", $time, in, out, 71);
        
        in = 8'd109;
        #100;
        $display("%0t\t%d\t%d\t%d", $time, in, out, 77);
        
        in = 8'd146;
        #100;
        $display("%0t\t%d\t%d\t%d", $time, in, out, 146);
        
        in = 8'd48;
        #100;
        $display("%0t\t%d\t%d\t%d", $time, in, out, 48);
        
        in = 8'd207;
        #100;
        $display("%0t\t%d\t%d\t%d", $time, in, out, 207);
        
        in = 8'd58;
        #100;
        $display("%0t\t%d\t%d\t%d", $time, in, out, 58);
        
        in = 8'd123;
        #100;
        $display("%0t\t%d\t%d\t%d", $time, in, out, 123);
        
        in = 8'd148;
        #100;
        $display("%0t\t%d\t%d\t%d", $time, in, out, 148);
        
        in = 8'd127;
        #100;
        $display("%0t\t%d\t%d\t%d", $time, in, out, 127);
        
        #100;
        $display("\nSimulation complete!");
        $finish;
    end
endmodule