`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/15/2021 06:40:11 PM
// Design Name: 
// Module Name: top_demo
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


module top_demo
(
  // input
  input  logic [7:0] sw,
  input  logic [3:0] btn,
  input  logic       sysclk_125mhz,
  input  logic       rst,
  // output  
  output logic [7:0] led,
  output logic sseg_ca,
  output logic sseg_cb,
  output logic sseg_cc,
  output logic sseg_cd,
  output logic sseg_ce,
  output logic sseg_cf,
  output logic sseg_cg,
  output logic sseg_dp,
  output logic [3:0] sseg_an
);

  logic [16:0] CURRENT_COUNT;
  logic [16:0] NEXT_COUNT;
  logic        smol_clk;
  
  
  
//DES des (key, plaintext, encrypt, cbc, iv, ciphertext);
logic [15:0] toSeg;

logic cbc;
logic encrypt;
logic [63:0] iv;
logic [63:0] key;
logic [63:0] plaintext;
logic [63:0] ciphertext;

// Place DES instantiation here
DES des(key, plaintext, encrypt, cbc, iv, ciphertext);

// Register logic storing clock counts
  always @(*)
  begin
    case(sw[3:0])
      4'b0000: toSeg <= ciphertext[63:48];
      4'b0001: toSeg <= ciphertext[47:32];
      4'b0010: toSeg <= ciphertext[31:16];
      4'b0011: toSeg <= ciphertext[15:0];
      4'b0100: toSeg <= key[63:48];
      4'b0101: toSeg <= key[47:32];
      4'b0110: toSeg <= key[31:16];
      4'b0111: toSeg <= key[15:0];
      4'b1000: toSeg <= plaintext[63:48];
      4'b1001: toSeg <= plaintext[47:32];
      4'b1010: toSeg <= plaintext[31:16];
      4'b1011: toSeg <= plaintext[15:0];
     default : toSeg <= 16'h0000;
    endcase
    case(sw[5:4])
      2'b00: 
      begin
        plaintext <= 64'hed7b_c587_a26f_8c67;
        key <= 64'h3b38_9837_1520_f75e;
        iv <= 64'h0000000000000000;
        cbc <= 1'b0;
        encrypt <= 1'b1;
        //ciphertext: ea37231a9ad2e5d9
      end
      2'b01:
      begin
        plaintext <= 64'hed7b_c587_a26f_8c67;
        key <= 64'h3b3898371520f75e;
        iv <= 64'h0000000000000000;
        cbc <= 1'b0;
        encrypt <= 1'b1;
      end
      2'b10:
      begin
        
        plaintext <= 64'hed7b_c587_a26f_8c67;
        key <= 64'h3b3898371520f75e;
        iv <= 64'h0000000000000000;
        cbc <= 1'b0;
        encrypt <= 1'b1;
      end
      2'b11:
      begin
        plaintext <= 64'hed7b_c587_a26f_8c67;
        key <= 64'h3b3898371520f75e;
        iv <= 64'h0000000000000000;
        cbc <= 1'b0;
        encrypt <= 1'b1;
      end
      default : begin
        plaintext <= 64'h0;
        key <= 64'h0;
        iv <= 64'h0;
        cbc <= 1'b0;
        encrypt <= 1'b0;
      end
    endcase
  end
  
  // 7-segment display
  segment_driver driver(
  .clk(smol_clk),
  .rst(btn[3]),
  .digit0(toSeg[3:0]),
  .digit1(toSeg[7:4]),
  .digit2(toSeg[11:8]),
  .digit3(toSeg[15:12]),
  .decimals({1'b0, btn[2:0]}),
  .segment_cathodes({sseg_dp, sseg_cg, sseg_cf, sseg_ce, sseg_cd, sseg_cc, sseg_cb, sseg_ca}),
  .digit_anodes(sseg_an)
  );
  
  
  // Increment logic
  assign NEXT_COUNT = CURRENT_COUNT == 17'd100000 ? 17'h00000 : CURRENT_COUNT + 1;

  // Creation of smaller clock signal from counters
  assign smol_clk = CURRENT_COUNT == 17'd100000 ? 1'b1 : 1'b0;

endmodule
