`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2025 09:45:48
// Design Name: 
// Module Name: Cyclic_lamp_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Cyclic_lamp_TB;
    reg clk;
    wire [0:2] light;

    Cyclic_lamp LAMP(.clk(clk),.light(light));

    always #5 clk = ~clk;

    initial begin
        clk = 1'b0;
        #100 $finish;
    end

    initial begin
        $monitor($time, " RGY:%b", light);
    end
endmodule
