`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2025 09:43:38
// Design Name: 
// Module Name: Cyclic_lamp
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


module Cyclic_lamp(clk,light);
    input clk;
    output reg [2:0] light;

    parameter s0 = 2'd0, s1 = 2'd1, s2 = 2'd2;
    parameter RED   = 3'b000,
              GREEN = 3'b001,
              YELLOW = 3'b010;

    reg [1:0]state = s0;

    always @(posedge clk)
    case (state)
        s0: begin
                light <= GREEN;
                state <= s1;
            end

        s1: begin
                light <= YELLOW;
                state <= s2;
            end

        s2: begin
                light <= RED;
                state <= s0;
            end

        default: begin
                light <= RED;
                state <= s0;
            end
    endcase
endmodule
