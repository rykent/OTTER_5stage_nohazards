`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Ryken Thompson
// 
// Create Date: 10/24/2023 09:55:31 PM
// Design Name: OTTER MCU Branch Address Generator
// Module Name: BRANCH_ADDR_GEN
// Target Devices: Basys3
// Description: Generates pc addresses for branch, jal, and jalr instructions
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module BRANCH_ADDR_GEN(
    input [31:0] IMM,
    input [31:0] PC,
    input [31:0] RS1,
    output [31:0] JAL,
    output [31:0] BRANCH,
    output [31:0] JALR
    );
    
    assign JAL = PC + IMM;       //jal is program counter with J_Type immediate offset
    assign BRANCH = PC + IMM;    //branch is program counter with B_TYPE immediate offset
    assign JALR = RS1 + IMM;     //jalr is summation of source register and I_TYPE immediate
    
endmodule
