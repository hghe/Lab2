/*
 Data Encryption Standard (S-DES)
 64-bit 16-round block cipher encryption and decryption algorithm 
 using 56-bit key (64-bit key with Parity).
 */

module GenerateKeys (Key, SubKey1, SubKey2, SubKey3, SubKey4,
		     SubKey5, SubKey6, SubKey7, SubKey8,
		     SubKey9, SubKey10, SubKey11, SubKey12,
		     SubKey13, SubKey14, SubKey15, SubKey16);
   
   // Generate SubKeys
   
   input logic [63:0]  Key;

	//assuming left is top of register
   	output logic [47:0] SubKey1;
	output logic [47:0] SubKey2;
	output logic [47:0] SubKey3;
	output logic [47:0] SubKey4;
	output logic [47:0] SubKey5;
	output logic [47:0] SubKey6;
	output logic [47:0] SubKey7;
	output logic [47:0] SubKey8;
	output logic [47:0] SubKey9;
	output logic [47:0] SubKey10;
	output logic [47:0] SubKey11;
	output logic [47:0] SubKey12;
	output logic [47:0] SubKey13;
	output logic [47:0] SubKey14;
	output logic [47:0] SubKey15;
	output logic [47:0] SubKey16;

	logic [27:0] C1;
	logic [27:0] D1;
	
	
	logic [27:0] C2;
	logic [27:0] D2;
	logic [27:0] C3;
	logic [27:0] D3;
	logic [27:0] C4;
	logic [27:0] D4;
	logic [27:0] C5;
	logic [27:0] D5;
	logic [27:0] C6;
	logic [27:0] D6;
	logic [27:0] C7;
	logic [27:0] D7;
	logic [27:0] C8;
	logic [27:0] D8;
	logic [27:0] C9;
	logic [27:0] D9;
	logic [27:0] C10;
	logic [27:0] D10;
	logic [27:0] C11;
	logic [27:0] D11;
	logic [27:0] C12;
	logic [27:0] D12;
	logic [27:0] C13;
	logic [27:0] D13;
	logic [27:0] C14;
	logic [27:0] D14;
	logic [27:0] C15;
	logic [27:0] D15;
	logic [27:0] C16;
	logic [27:0] D16;
	logic [27:0] C17;
	logic [27:0] D17;
	
   
	PC1 PC1(Key, C1, D1);
	
   	//round 1
	//left shift by 1
	assign C2 = {C1[26:0], C1[27]};
	assign D2 = {D1[26:0], D1[27]};
	
	PC2 choice1(C2, D2, SubKey1);
	
	//round 2
	//left shift by 1
	assign C3 = {C2[26:0], C2[27]};
	assign D3 = {D2[26:0], D2[27]};
	
	PC2 choice2(C3, D3, SubKey2);
	
	//round 3
	//left shift by 2	
	assign C4 = {C3[25:0], C3[27:26]};
	assign D4 = {D3[25:0], D3[27:26]};
	
	PC2 choice3(C4, D4, SubKey3);
	
	//round 4
	//left shift by 2	
	assign C5 = {C4[25:0], C4[27:26]};
	assign D5 = {D4[25:0], D4[27:26]};
	
	PC2 choice4(C5, D5, SubKey4);
	
	//round 5
	//left shift by 2	
	assign C6 = {C5[25:0], C5[27:26]};
	assign D6 = {D5[25:0], D5[27:26]};
	
	PC2 choice5(C6, D6, SubKey5);
	
	
	//round 6
	//left shift by 2	
	assign C7 = {C6[25:0], C6[27:26]};
	assign D7 = {D6[25:0], D6[27:26]};
	
	PC2 choice6(C7, D7, SubKey6);
	
	//round 7
	//left shift by 2	
	assign C8 = {C7[25:0], C7[27:26]};
	assign D8 = {D7[25:0], D7[27:26]};
	
	PC2 choice7(C8, D8, SubKey7);
	
	//round 8
	//left shift by 2	
	assign C9 = {C8[25:0], C8[27:26]};
	assign D9 = {D8[25:0], D8[27:26]};
	
	PC2 choice8(C9, D9, SubKey8);
	
	//round 9
	//left shift by 1	
	assign C10 = {C9[26:0], C9[27]};
	assign D10 = {D9[26:0], D9[27]};
	
	PC2 choice9(C10, D10, SubKey9);
	
	//round 10
	//left shift by 2	
	assign C11 = {C10[25:0], C10[27:26]};
	assign D11 = {D10[25:0], D10[27:26]};
	
	PC2 choice10(C11, D11, SubKey10);
	
	//round 11
	//left shift by 2	
	assign C12 = {C11[25:0], C11[27:26]};
	assign D12 = {D11[25:0], D11[27:26]};
	
	PC2 choice11(C12, D12, SubKey11);
	
	//round 12
	//left shift by 2	
	assign C13 = {C12[25:0], C12[27:26]};
	assign D13 = {D12[25:0], D12[27:26]};
	
	PC2 choice12(C13, D13, SubKey12);
	
	//round 13
	//left shift by 2	
	assign C14 = {C13[25:0], C13[27:26]};
	assign D14 = {D13[25:0], D13[27:26]};
	
	PC2 choice13(C14, D14, SubKey13);
	
	//round 14
	//left shift by 2	
	assign C15 = {C14[25:0], C14[27:26]};
	assign D15 = {D14[25:0], D14[27:26]};
	
	PC2 choice14(C15, D15, SubKey14);
	
	//round 15
	//left shift by 2	
	assign C16 = {C15[25:0], C15[27:26]};
	assign D16 = {D15[25:0], D15[27:26]};
	
	PC2 choice15(C16, D16, SubKey15);
	
	//round 16
	//left shift by 1	
	assign C17 = {C16[26:0], C16[27]};
	assign D17 = {D16[26:0], D16[27]};
	
	PC2 choice16(C17, D17, SubKey16);
		
	
endmodule // GenerateKeys

module PC1 (key, left_block, right_block);

	/*Haven't been able to test this but it should be good*/

   input logic [63:0]  key;
   output logic [27:0] left_block;
   output logic [27:0] right_block;
   
   //Left Block Assignments
   //line1
   assign left_block[27] = key[64-57];
   assign left_block[26] = key[64-49];
   assign left_block[25] = key[64-41];
   assign left_block[24] = key[64-33];
   assign left_block[23] = key[64-25];
   assign left_block[22] = key[64-17];
   assign left_block[21] = key[64-9 ];
   //line2
   assign left_block[20] = key[64-1 ];
   assign left_block[19] = key[64-58];
   assign left_block[18] = key[64-50];
   assign left_block[17] = key[64-42];
   assign left_block[16] = key[64-34];
   assign left_block[15] = key[64-26];
   assign left_block[14] = key[64-18];
   //line2
   assign left_block[13] = key[64-10];
   assign left_block[12] = key[64-2 ];
   assign left_block[11] = key[64-59];
   assign left_block[10] = key[64-51];
   assign left_block[9 ] = key[64-43];
   assign left_block[8 ] = key[64-35];
   assign left_block[7 ] = key[64-27];
   //line4
   assign left_block[6 ] = key[64-19];
   assign left_block[5 ] = key[64-11];
   assign left_block[4 ] = key[64-3 ];
   assign left_block[3 ] = key[64-60];
   assign left_block[2 ] = key[64-52];
   assign left_block[1 ] = key[64-44];
   assign left_block[0 ] = key[64-36];
   
   //Right Block Assignments
   //line1
	assign right_block[27] = key[64-63];
	assign right_block[26] = key[64-55];
	assign right_block[25] = key[64-47];
	assign right_block[24] = key[64-39];
	assign right_block[23] = key[64-31];
	assign right_block[22] = key[64-23];
	assign right_block[21] = key[64-15];
	//line2
	assign right_block[20] = key[64-7 ];
	assign right_block[19] = key[64-62];
	assign right_block[18] = key[64-54];
   	assign right_block[17] = key[64-46];
	assign right_block[16] = key[64-38];
	assign right_block[15] = key[64-30];
	assign right_block[14] = key[64-22];
	//line3
	assign right_block[13] = key[64-14];
	assign right_block[12] = key[64-6 ];
	assign right_block[11] = key[64-61];
	assign right_block[10] = key[64-53];
	assign right_block[9 ] = key[64-45];
	assign right_block[8 ] = key[64-37];
	assign right_block[7 ] = key[64-29];
	//line4
	assign right_block[6 ] = key[64-21];
	assign right_block[5 ] = key[64-13];
	assign right_block[4 ] = key[64-5 ];
	assign right_block[3 ] = key[64-28];
	assign right_block[2 ] = key[64-20];
	assign right_block[1 ] = key[64-12];
	assign right_block[0 ] = key[64-4 ];
	

endmodule // PC1

module PC2 (left_block, right_block, subkey);
   input logic [27:0] left_block;
   input logic [27:0] right_block;
   output logic [47:0] subkey;
   
   logic [55:0] com_block; 
   
   //this concat has been check by TA, I don't get it but whatever
   assign com_block[27:0] = right_block;
   assign com_block[55:28] = left_block;
   
   //visually checked, looks good
   //table assignments from paper
   //line1
   assign subkey[47] = com_block[56-14];
   assign subkey[46] = com_block[56-17];
   assign subkey[45] = com_block[56-11];
   assign subkey[44] = com_block[56-24];
   assign subkey[43] = com_block[56-1 ];
   assign subkey[42] = com_block[56-5 ];
   assign subkey[41] = com_block[56-3 ];
   assign subkey[40] = com_block[56-28];
   //line2
   assign subkey[39] = com_block[56-15];
   assign subkey[38] = com_block[56-6 ];
   assign subkey[37] = com_block[56-21];
   assign subkey[36] = com_block[56-10];
   assign subkey[35] = com_block[56-23];
   assign subkey[34] = com_block[56-19];
   assign subkey[33] = com_block[56-12];
   assign subkey[32] = com_block[56-4 ];
   //line3
   assign subkey[31] = com_block[56-26];
   assign subkey[30] = com_block[56-8 ];
   assign subkey[29] = com_block[56-16];
   assign subkey[28] = com_block[56-7 ];
   assign subkey[27] = com_block[56-27];
   assign subkey[26] = com_block[56-20];
   assign subkey[25] = com_block[56-13];
   assign subkey[24] = com_block[56-2 ];
   //line4
   assign subkey[23] = com_block[56-41];
   assign subkey[22] = com_block[56-52];
   assign subkey[21] = com_block[56-31];
   assign subkey[20] = com_block[56-37];
   assign subkey[19] = com_block[56-47];
   assign subkey[18] = com_block[56-55];
   assign subkey[17] = com_block[56-30];
   assign subkey[16] = com_block[56-40];
   //line5
   assign subkey[15] = com_block[56-51];
   assign subkey[14] = com_block[56-45];
   assign subkey[13] = com_block[56-33];
   assign subkey[12] = com_block[56-48];
   assign subkey[11] = com_block[56-44];
   assign subkey[10] = com_block[56-49];
   assign subkey[9 ] = com_block[56-39];
   assign subkey[8 ] = com_block[56-56];
   //line6
   assign subkey[7 ] = com_block[56-34];
   assign subkey[6 ] = com_block[56-53];
   assign subkey[5 ] = com_block[56-46];
   assign subkey[4 ] = com_block[56-42];
   assign subkey[3 ] = com_block[56-50];
   assign subkey[2 ] = com_block[56-36];
   assign subkey[1 ] = com_block[56-29];
   assign subkey[0 ] = com_block[56-32];
   
   
   
endmodule // PC2

// Straight Function
module SF (inp_block, out_block);

   input logic [31:0] inp_block;
   output logic [31:0] out_block;
   
   //asignements from table
   //line1
   assign out_block[31] = inp_block[32-16];
   assign out_block[30] = inp_block[32-7 ];
   assign out_block[29] = inp_block[23-20];
   assign out_block[28] = inp_block[32-21];
   assign out_block[27] = inp_block[32-29];
   assign out_block[26] = inp_block[32-12];
   assign out_block[25] = inp_block[32-28];
   assign out_block[24] = inp_block[32-17];
   //line2
   assign out_block[23] = inp_block[32-1 ];
   assign out_block[22] = inp_block[32-15];
   assign out_block[21] = inp_block[32-23];
   assign out_block[20] = inp_block[32-26];
   assign out_block[19] = inp_block[32-5 ];
   assign out_block[18] = inp_block[32-18];
   assign out_block[17] = inp_block[32-31];
   assign out_block[16] = inp_block[32-10];
   //line3
   assign out_block[15] = inp_block[32-2 ];
   assign out_block[14] = inp_block[32-8 ];
   assign out_block[13] = inp_block[32-24];
   assign out_block[12] = inp_block[32-14];
   assign out_block[11] = inp_block[32-32];
   assign out_block[10] = inp_block[32-27];
   assign out_block[9 ] = inp_block[32-3 ];
   assign out_block[8 ] = inp_block[32-9 ];
   //line4
   assign out_block[7 ] = inp_block[32-19];
   assign out_block[6 ] = inp_block[32-13];
   assign out_block[5 ] = inp_block[32-30];
   assign out_block[4 ] = inp_block[32-6 ];
   assign out_block[3 ] = inp_block[32-22];
   assign out_block[2 ] = inp_block[32-11];
   assign out_block[1 ] = inp_block[32-4 ];
   assign out_block[0 ] = inp_block[32-25];
   
   

endmodule // SF

// Expansion Function
module EF (inp_block, out_block);

	input logic [31:0] inp_block;
	output logic [47:0] out_block;

	//assignment from table
	//line1
	assign out_block[47] = inp_block[32-32];
	assign out_block[46] = inp_block[32-1 ];
	assign out_block[45] = inp_block[32-2 ];
	assign out_block[44] = inp_block[32-3 ];
	assign out_block[43] = inp_block[32-4 ];
	assign out_block[42] = inp_block[32-5 ];
	//line2
	assign out_block[41] = inp_block[32-4 ];
	assign out_block[40] = inp_block[32-5 ];
	assign out_block[39] = inp_block[32-6 ];
	assign out_block[38] = inp_block[32-7 ];
	assign out_block[37] = inp_block[32-8 ];
	assign out_block[36] = inp_block[32-9 ];
	//line3
	assign out_block[35] = inp_block[32-8 ];
	assign out_block[34] = inp_block[32-9 ];
	assign out_block[33] = inp_block[32-10];
	assign out_block[32] = inp_block[32-11];
	assign out_block[31] = inp_block[32-12];
	assign out_block[30] = inp_block[32-13];
	//line4
	assign out_block[29] = inp_block[32-12];
	assign out_block[28] = inp_block[32-13];
	assign out_block[27] = inp_block[32-14];
	assign out_block[26] = inp_block[32-15];
	assign out_block[25] = inp_block[32-16];
	assign out_block[24] = inp_block[32-17];
	//line5
	assign out_block[23] = inp_block[32-16];
	assign out_block[22] = inp_block[32-17];
	assign out_block[21] = inp_block[32-18];
	assign out_block[20] = inp_block[32-19];
	assign out_block[19] = inp_block[32-20];
	assign out_block[18] = inp_block[32-21];
	//line6
	assign out_block[17] = inp_block[32-20];
	assign out_block[16] = inp_block[32-21];
	assign out_block[15] = inp_block[32-22];
	assign out_block[14] = inp_block[32-23];
	assign out_block[13] = inp_block[32-24];
	assign out_block[12] = inp_block[32-25];
	//line7
	assign out_block[11] = inp_block[32-24];
	assign out_block[10] = inp_block[32-25];
	assign out_block[9 ] = inp_block[32-26];
	assign out_block[8 ] = inp_block[32-27];
	assign out_block[7 ] = inp_block[32-28];
	assign out_block[6 ] = inp_block[32-29];
	//line8
	assign out_block[5 ] = inp_block[32-28];
	assign out_block[4 ] = inp_block[32-29];
	assign out_block[3 ] = inp_block[32-30];
	assign out_block[2 ] = inp_block[32-31];
	assign out_block[1 ] = inp_block[32-32];
	assign out_block[0 ] = inp_block[32-1 ];

endmodule // EF

module feistel (inp_block, subkey, out_block);

   input logic [31:0]  inp_block;
   
   
   
   input logic [47:0]  subkey;
   output logic [31:0] out_block;
   
   logic [47:0]exp_inp;
   
   EF EF(inp_block, exp_inp); //not sure if syntax is correct
   
   logic [47:0]preSub;

   assign preSub[47:0] = (exp_inp[47:0] ^ subkey[47:0]);

	logic [31:0]preDiff;


	S8_Box S8(preSub[5:0], preDiff[3:0]);
	S7_Box S7(preSub[11:6], preDiff[7:4]);
	S6_Box S6(preSub[17:12], preDiff[11:8]);
	S5_Box S5(preSub[23:18], preDiff[15:12]);
	S4_Box S4(preSub[29:24], preDiff[19:16]);
	S3_Box S3(preSub[35:30], preDiff[23:20]);
	S2_Box S2(preSub[41:36], preDiff[27:24]);
	S1_Box S1(preSub[47:42], preDiff[31:28]);

	SF SF(preDiff, out_block);



   
   
   
   
   //assign exp_inp[47:0] = EF(inp_block);
   
   

endmodule // Feistel

// DES block round
module round (inp_block, subkey, out_block);

   input logic [63:0]  inp_block;
   input logic [47:0]  subkey;
   output logic [63:0] out_block;


   logic [31:0]left_block;
   logic [31:0]right_block;
	
	//assigning left_block to the upper part of the input register
	
   assign left_block[31:0] = inp_block[63:32];
   assign right_block[31:0] = inp_block[31:0];


	 //assign left side of outblock to right side of inp block
   assign out_block[63:32] = right_block[31:0];

	logic [31:0]feistOut;
	feistel feist(right_block, subkey, feistOut);
	
	assign out_block[31:0] = feistOut ^ left_block;



endmodule // round1

// Initial Permutation
module IP (inp_block, out_block);

   input logic [63:0]  inp_block;
   output logic [63:0] out_block;

   assign out_block[63] = inp_block[64-58];
   assign out_block[62] = inp_block[64-50];
   assign out_block[61] = inp_block[64-42];
   assign out_block[60] = inp_block[64-34];
   assign out_block[59] = inp_block[64-26];
   assign out_block[58] = inp_block[64-18];
   assign out_block[57] = inp_block[64-10];
   assign out_block[56] = inp_block[64-2];
   assign out_block[55] = inp_block[64-60];
   assign out_block[54] = inp_block[64-52];   
   assign out_block[53] = inp_block[64-44];   
   assign out_block[52] = inp_block[64-36];
   assign out_block[51] = inp_block[64-28];
   assign out_block[50] = inp_block[64-20];
   assign out_block[49] = inp_block[64-12];
   assign out_block[48] = inp_block[64-4];
   assign out_block[47] = inp_block[64-62];
   assign out_block[46] = inp_block[64-54];
   assign out_block[45] = inp_block[64-46];
   assign out_block[44] = inp_block[64-38];   
   assign out_block[43] = inp_block[64-30];
   assign out_block[42] = inp_block[64-22];   
   assign out_block[41] = inp_block[64-14];
   assign out_block[40] = inp_block[64-6];
   assign out_block[39] = inp_block[64-64];
   assign out_block[38] = inp_block[64-56];
   assign out_block[37] = inp_block[64-48];
   assign out_block[36] = inp_block[64-40];
   assign out_block[35] = inp_block[64-32];
   assign out_block[34] = inp_block[64-24];   
   assign out_block[33] = inp_block[64-16];
   assign out_block[32] = inp_block[64-8];   
   assign out_block[31] = inp_block[64-57];
   assign out_block[30] = inp_block[64-49];
   assign out_block[29] = inp_block[64-41];
   assign out_block[28] = inp_block[64-33];
   assign out_block[27] = inp_block[64-25];
   assign out_block[26] = inp_block[64-17];
   assign out_block[25] = inp_block[64-9];   
   assign out_block[24] = inp_block[64-1];   
   assign out_block[23] = inp_block[64-59];
   assign out_block[22] = inp_block[64-51];   
   assign out_block[21] = inp_block[64-43];
   assign out_block[20] = inp_block[64-35];
   assign out_block[19] = inp_block[64-27];
   assign out_block[18] = inp_block[64-19];
   assign out_block[17] = inp_block[64-11];
   assign out_block[16] = inp_block[64-3];
   assign out_block[15] = inp_block[64-61];
   assign out_block[14] = inp_block[64-53];   
   assign out_block[13] = inp_block[64-45];
   assign out_block[12] = inp_block[64-37];   
   assign out_block[11] = inp_block[64-29];
   assign out_block[10] = inp_block[64-21];
   assign out_block[9] = inp_block[64-13];
   assign out_block[8] = inp_block[64-5];
   assign out_block[7] = inp_block[64-63];
   assign out_block[6] = inp_block[64-55];
   assign out_block[5] = inp_block[64-47];
   assign out_block[4] = inp_block[64-39];   
   assign out_block[3] = inp_block[64-31];
   assign out_block[2] = inp_block[64-23];    
   assign out_block[1] = inp_block[64-15];
   assign out_block[0] = inp_block[64-7];   

endmodule // IP

// Final Permutation
module FP (inp_block, out_block);

   input logic [63:0]  inp_block;
   output logic [63:0] out_block;

   assign out_block[63] = inp_block[64-40];
   assign out_block[62] = inp_block[64-8];
   assign out_block[61] = inp_block[64-48];
   assign out_block[60] = inp_block[64-16];
   assign out_block[59] = inp_block[64-56];
   assign out_block[58] = inp_block[64-24];
   assign out_block[57] = inp_block[64-64];
   assign out_block[56] = inp_block[64-32];   
   assign out_block[55] = inp_block[64-39];
   assign out_block[54] = inp_block[64-7];   
   assign out_block[53] = inp_block[64-47];   
   assign out_block[52] = inp_block[64-15];
   assign out_block[51] = inp_block[64-55];
   assign out_block[50] = inp_block[64-23];
   assign out_block[49] = inp_block[64-63];
   assign out_block[48] = inp_block[64-31];   
   assign out_block[47] = inp_block[64-38];
   assign out_block[46] = inp_block[64-6];
   assign out_block[45] = inp_block[64-46];
   assign out_block[44] = inp_block[64-14];   
   assign out_block[43] = inp_block[64-54];
   assign out_block[42] = inp_block[64-22];   
   assign out_block[41] = inp_block[64-62];
   assign out_block[40] = inp_block[64-30];   
   assign out_block[39] = inp_block[64-37];
   assign out_block[38] = inp_block[64-5];
   assign out_block[37] = inp_block[64-45];
   assign out_block[36] = inp_block[64-13];
   assign out_block[35] = inp_block[64-53];
   assign out_block[34] = inp_block[64-21];   
   assign out_block[33] = inp_block[64-61];
   assign out_block[32] = inp_block[64-29];   
   assign out_block[31] = inp_block[64-36];
   assign out_block[30] = inp_block[64-4];
   assign out_block[29] = inp_block[64-44];
   assign out_block[28] = inp_block[64-12];
   assign out_block[27] = inp_block[64-52];
   assign out_block[26] = inp_block[64-20];
   assign out_block[25] = inp_block[64-60];   
   assign out_block[24] = inp_block[64-28];   
   assign out_block[23] = inp_block[64-35];
   assign out_block[22] = inp_block[64-3];   
   assign out_block[21] = inp_block[64-43];
   assign out_block[20] = inp_block[64-11];
   assign out_block[19] = inp_block[64-51];
   assign out_block[18] = inp_block[64-19];
   assign out_block[17] = inp_block[64-59];
   assign out_block[16] = inp_block[64-27];   
   assign out_block[15] = inp_block[64-34];
   assign out_block[14] = inp_block[64-2];   
   assign out_block[13] = inp_block[64-42];
   assign out_block[12] = inp_block[64-10];   
   assign out_block[11] = inp_block[64-50];
   assign out_block[10] = inp_block[64-18];
   assign out_block[9] = inp_block[64-58];
   assign out_block[8] = inp_block[64-26];   
   assign out_block[7] = inp_block[64-33];
   assign out_block[6] = inp_block[64-1];
   assign out_block[5] = inp_block[64-41];   
   assign out_block[4] = inp_block[64-9];
   assign out_block[3] = inp_block[64-49];    
   assign out_block[2] = inp_block[64-17];
   assign out_block[1] = inp_block[64-57];
   assign out_block[0] = inp_block[64-25];  

endmodule // FP

module S1_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})
	  6'd0  : out_bits = 4'd14;             
	  6'd1  : out_bits = 4'd4;             
	  6'd2  : out_bits = 4'd13;            
	  6'd3  : out_bits = 4'd1;             
	  6'd4  : out_bits = 4'd2;             
	  6'd5  : out_bits = 4'd15;             
	  6'd6  : out_bits = 4'd11;             
	  6'd7  : out_bits = 4'd8;             
	  6'd8  : out_bits = 4'd3;             
	  6'd9  : out_bits = 4'd10;             
	  6'd10 : out_bits = 4'd6;             
	  6'd11 : out_bits = 4'd12;             
	  6'd12 : out_bits = 4'd5;             
	  6'd13 : out_bits = 4'd9;             
	  6'd14 : out_bits = 4'd0;             
	  6'd15 : out_bits = 4'd7;             
	  6'd16 : out_bits = 4'd0;             
	  6'd17 : out_bits = 4'd15;             
	  6'd18 : out_bits = 4'd7;             
	  6'd19 : out_bits = 4'd4;             
	  6'd20 : out_bits = 4'd14;             
	  6'd21 : out_bits = 4'd2;             
	  6'd22 : out_bits = 4'd13;             
	  6'd23 : out_bits = 4'd1;             
	  6'd24 : out_bits = 4'd10;             
	  6'd25 : out_bits = 4'd6;             
	  6'd26 : out_bits = 4'd12;             
	  6'd27 : out_bits = 4'd11;             
	  6'd28 : out_bits = 4'd9;             
	  6'd29 : out_bits = 4'd5;             
	  6'd30 : out_bits = 4'd3;             
	  6'd31 : out_bits = 4'd8;             
	  6'd32 : out_bits = 4'd4;             
	  6'd33 : out_bits = 4'd1;             
	  6'd34 : out_bits = 4'd14;             
	  6'd35 : out_bits = 4'd8;             
	  6'd36 : out_bits = 4'd13;             
	  6'd37 : out_bits = 4'd6;             
	  6'd38 : out_bits = 4'd2;             
	  6'd39 : out_bits = 4'd11;             
	  6'd40 : out_bits = 4'd15;             
	  6'd41 : out_bits = 4'd12;             
	  6'd42 : out_bits = 4'd9;             
	  6'd43 : out_bits = 4'd7;             
	  6'd44 : out_bits = 4'd3;             
	  6'd45 : out_bits = 4'd10;             
	  6'd46 : out_bits = 4'd5;             
	  6'd47 : out_bits = 4'd0;             
	  6'd48 : out_bits = 4'd15;             
	  6'd49 : out_bits = 4'd12;             
	  6'd50 : out_bits = 4'd8;             
	  6'd51 : out_bits = 4'd2;             
	  6'd52 : out_bits = 4'd4;             
	  6'd53 : out_bits = 4'd9;            
	  6'd54 : out_bits = 4'd1;             
	  6'd55 : out_bits = 4'd7;            
	  6'd56 : out_bits = 4'd5;        
	  6'd57 : out_bits = 4'd11;        
	  6'd58 : out_bits = 4'd3;       
	  6'd59 : out_bits = 4'd14;       
	  6'd60 : out_bits = 4'd10;       
	  6'd61 : out_bits = 4'd0;       
	  6'd62 : out_bits = 4'd6;      
	  6'd63 : out_bits = 4'd13;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S1_Box

module S2_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})             
	  6'd0  : out_bits = 4'd15;             
	  6'd1  : out_bits = 4'd1;             
	  6'd2  : out_bits = 4'd8;            
	  6'd3  : out_bits = 4'd14;             
	  6'd4  : out_bits = 4'd6;             
	  6'd5  : out_bits = 4'd11;             
	  6'd6  : out_bits = 4'd3;             
	  6'd7  : out_bits = 4'd4;             
	  6'd8  : out_bits = 4'd9;             
	  6'd9  : out_bits = 4'd7;             
	  6'd10 : out_bits = 4'd2;             
	  6'd11 : out_bits = 4'd13;             
	  6'd12 : out_bits = 4'd12;             
	  6'd13 : out_bits = 4'd0;             
	  6'd14 : out_bits = 4'd5;             
	  6'd15 : out_bits = 4'd10;             
	  6'd16 : out_bits = 4'd3;             
	  6'd17 : out_bits = 4'd13;             
	  6'd18 : out_bits = 4'd4;             
	  6'd19 : out_bits = 4'd7;             
	  6'd20 : out_bits = 4'd15;             
	  6'd21 : out_bits = 4'd2;             
	  6'd22 : out_bits = 4'd8;             
	  6'd23 : out_bits = 4'd14;             
	  6'd24 : out_bits = 4'd12;             
	  6'd25 : out_bits = 4'd0;             
	  6'd26 : out_bits = 4'd1;             
	  6'd27 : out_bits = 4'd10;             
	  6'd28 : out_bits = 4'd6;             
	  6'd29 : out_bits = 4'd9;             
	  6'd30 : out_bits = 4'd11;             
	  6'd31 : out_bits = 4'd5;             
	  6'd32 : out_bits = 4'd0;             
	  6'd33 : out_bits = 4'd14;             
	  6'd34 : out_bits = 4'd7;             
	  6'd35 : out_bits = 4'd11;             
	  6'd36 : out_bits = 4'd10;             
	  6'd37 : out_bits = 4'd4;             
	  6'd38 : out_bits = 4'd13;             
	  6'd39 : out_bits = 4'd1;             
	  6'd40 : out_bits = 4'd5;             
	  6'd41 : out_bits = 4'd8;             
	  6'd42 : out_bits = 4'd12;             
	  6'd43 : out_bits = 4'd6;             
	  6'd44 : out_bits = 4'd9;             
	  6'd45 : out_bits = 4'd3;             
	  6'd46 : out_bits = 4'd2;             
	  6'd47 : out_bits = 4'd15;             
	  6'd48 : out_bits = 4'd13;             
	  6'd49 : out_bits = 4'd8;             
	  6'd50 : out_bits = 4'd10;             
	  6'd51 : out_bits = 4'd1;             
	  6'd52 : out_bits = 4'd3;             
	  6'd53 : out_bits = 4'd15;            
	  6'd54 : out_bits = 4'd4;             
	  6'd55 : out_bits = 4'd2;            
	  6'd56 : out_bits = 4'd11;        
	  6'd57 : out_bits = 4'd6;        
	  6'd58 : out_bits = 4'd7;       
	  6'd59 : out_bits = 4'd12;       
	  6'd60 : out_bits = 4'd0;       
	  6'd61 : out_bits = 4'd5;       
	  6'd62 : out_bits = 4'd14;      
	  6'd63 : out_bits = 4'd9;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S2_Box

module S3_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})
	  6'd0  : out_bits = 4'd10;             
	  6'd1  : out_bits = 4'd0;             
	  6'd2  : out_bits = 4'd9;            
	  6'd3  : out_bits = 4'd14;             
	  6'd4  : out_bits = 4'd6;             
	  6'd5  : out_bits = 4'd3;             
	  6'd6  : out_bits = 4'd15;             
	  6'd7  : out_bits = 4'd5;             
	  6'd8  : out_bits = 4'd1;             
	  6'd9  : out_bits = 4'd13;             
	  6'd10 : out_bits = 4'd12;             
	  6'd11 : out_bits = 4'd7;             
	  6'd12 : out_bits = 4'd11;             
	  6'd13 : out_bits = 4'd4;             
	  6'd14 : out_bits = 4'd2;             
	  6'd15 : out_bits = 4'd8;             
	  6'd16 : out_bits = 4'd13;             
	  6'd17 : out_bits = 4'd7;             
	  6'd18 : out_bits = 4'd0;             
	  6'd19 : out_bits = 4'd9;             
	  6'd20 : out_bits = 4'd3;             
	  6'd21 : out_bits = 4'd4;             
	  6'd22 : out_bits = 4'd6;             
	  6'd23 : out_bits = 4'd10;             
	  6'd24 : out_bits = 4'd2;             
	  6'd25 : out_bits = 4'd8;             
	  6'd26 : out_bits = 4'd5;             
	  6'd27 : out_bits = 4'd14;             
	  6'd28 : out_bits = 4'd12;             
	  6'd29 : out_bits = 4'd11;             
	  6'd30 : out_bits = 4'd15;             
	  6'd31 : out_bits = 4'd1;             
	  6'd32 : out_bits = 4'd13;             
	  6'd33 : out_bits = 4'd6;             
	  6'd34 : out_bits = 4'd4;             
	  6'd35 : out_bits = 4'd9;             
	  6'd36 : out_bits = 4'd8;             
	  6'd37 : out_bits = 4'd15;             
	  6'd38 : out_bits = 4'd3;             
	  6'd39 : out_bits = 4'd0;             
	  6'd40 : out_bits = 4'd11;             
	  6'd41 : out_bits = 4'd1;             
	  6'd42 : out_bits = 4'd2;             
	  6'd43 : out_bits = 4'd12;             
	  6'd44 : out_bits = 4'd5;             
	  6'd45 : out_bits = 4'd10;             
	  6'd46 : out_bits = 4'd14;             
	  6'd47 : out_bits = 4'd7;             
	  6'd48 : out_bits = 4'd1;             
	  6'd49 : out_bits = 4'd10;             
	  6'd50 : out_bits = 4'd13;             
	  6'd51 : out_bits = 4'd0;             
	  6'd52 : out_bits = 4'd6;             
	  6'd53 : out_bits = 4'd9;            
	  6'd54 : out_bits = 4'd8;             
	  6'd55 : out_bits = 4'd7;            
	  6'd56 : out_bits = 4'd4;        
	  6'd57 : out_bits = 4'd15;        
	  6'd58 : out_bits = 4'd14;       
	  6'd59 : out_bits = 4'd3;       
	  6'd60 : out_bits = 4'd11;       
	  6'd61 : out_bits = 4'd5;       
	  6'd62 : out_bits = 4'd2;      
	  6'd63 : out_bits = 4'd12;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S3_Box

module S4_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd7;             
	  6'd1  : out_bits = 4'd13;             
	  6'd2  : out_bits = 4'd14;            
	  6'd3  : out_bits = 4'd3;             
	  6'd4  : out_bits = 4'd0;             
	  6'd5  : out_bits = 4'd6;             
	  6'd6  : out_bits = 4'd9;             
	  6'd7  : out_bits = 4'd10;             
	  6'd8  : out_bits = 4'd1;             
	  6'd9  : out_bits = 4'd2;             
	  6'd10 : out_bits = 4'd8;             
	  6'd11 : out_bits = 4'd5;             
	  6'd12 : out_bits = 4'd11;             
	  6'd13 : out_bits = 4'd12;             
	  6'd14 : out_bits = 4'd4;             
	  6'd15 : out_bits = 4'd15;             
	  6'd16 : out_bits = 4'd13;             
	  6'd17 : out_bits = 4'd8;             
	  6'd18 : out_bits = 4'd11;             
	  6'd19 : out_bits = 4'd5;             
	  6'd20 : out_bits = 4'd6;             
	  6'd21 : out_bits = 4'd15;             
	  6'd22 : out_bits = 4'd0;             
	  6'd23 : out_bits = 4'd3;             
	  6'd24 : out_bits = 4'd4;             
	  6'd25 : out_bits = 4'd7;             
	  6'd26 : out_bits = 4'd2;             
	  6'd27 : out_bits = 4'd12;             
	  6'd28 : out_bits = 4'd1;             
	  6'd29 : out_bits = 4'd10;             
	  6'd30 : out_bits = 4'd14;             
	  6'd31 : out_bits = 4'd9;             
	  6'd32 : out_bits = 4'd10;             
	  6'd33 : out_bits = 4'd6;             
	  6'd34 : out_bits = 4'd9;             
	  6'd35 : out_bits = 4'd0;             
	  6'd36 : out_bits = 4'd12;             
	  6'd37 : out_bits = 4'd11;             
	  6'd38 : out_bits = 4'd7;             
	  6'd39 : out_bits = 4'd13;             
	  6'd40 : out_bits = 4'd15;             
	  6'd41 : out_bits = 4'd1;             
	  6'd42 : out_bits = 4'd3;             
	  6'd43 : out_bits = 4'd14;             
	  6'd44 : out_bits = 4'd5;             
	  6'd45 : out_bits = 4'd2;             
	  6'd46 : out_bits = 4'd8;             
	  6'd47 : out_bits = 4'd4;             
	  6'd48 : out_bits = 4'd3;             
	  6'd49 : out_bits = 4'd15;             
	  6'd50 : out_bits = 4'd0;             
	  6'd51 : out_bits = 4'd6;             
	  6'd52 : out_bits = 4'd10;             
	  6'd53 : out_bits = 4'd1;            
	  6'd54 : out_bits = 4'd13;             
	  6'd55 : out_bits = 4'd8;            
	  6'd56 : out_bits = 4'd9;        
	  6'd57 : out_bits = 4'd4;        
	  6'd58 : out_bits = 4'd5;       
	  6'd59 : out_bits = 4'd11;       
	  6'd60 : out_bits = 4'd12;       
	  6'd61 : out_bits = 4'd7;       
	  6'd62 : out_bits = 4'd2;      
	  6'd63 : out_bits = 4'd14;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S4_Box

module S5_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd2;             
	  6'd1  : out_bits = 4'd12;             
	  6'd2  : out_bits = 4'd4;            
	  6'd3  : out_bits = 4'd1;             
	  6'd4  : out_bits = 4'd7;             
	  6'd5  : out_bits = 4'd10;             
	  6'd6  : out_bits = 4'd11;             
	  6'd7  : out_bits = 4'd6;             
	  6'd8  : out_bits = 4'd8;             
	  6'd9  : out_bits = 4'd5;             
	  6'd10 : out_bits = 4'd3;             
	  6'd11 : out_bits = 4'd15;             
	  6'd12 : out_bits = 4'd13;             
	  6'd13 : out_bits = 4'd0;             
	  6'd14 : out_bits = 4'd14;             
	  6'd15 : out_bits = 4'd9;             
	  6'd16 : out_bits = 4'd14;             
	  6'd17 : out_bits = 4'd11;             
	  6'd18 : out_bits = 4'd2;             
	  6'd19 : out_bits = 4'd12;             
	  6'd20 : out_bits = 4'd4;             
	  6'd21 : out_bits = 4'd7;             
	  6'd22 : out_bits = 4'd13;             
	  6'd23 : out_bits = 4'd1;             
	  6'd24 : out_bits = 4'd5;             
	  6'd25 : out_bits = 4'd0;             
	  6'd26 : out_bits = 4'd15;             
	  6'd27 : out_bits = 4'd10;             
	  6'd28 : out_bits = 4'd3;             
	  6'd29 : out_bits = 4'd9;             
	  6'd30 : out_bits = 4'd8;             
	  6'd31 : out_bits = 4'd6;             
	  6'd32 : out_bits = 4'd4;             
	  6'd33 : out_bits = 4'd2;             
	  6'd34 : out_bits = 4'd1;             
	  6'd35 : out_bits = 4'd11;             
	  6'd36 : out_bits = 4'd10;             
	  6'd37 : out_bits = 4'd13;             
	  6'd38 : out_bits = 4'd7;             
	  6'd39 : out_bits = 4'd8;             
	  6'd40 : out_bits = 4'd15;             
	  6'd41 : out_bits = 4'd9;             
	  6'd42 : out_bits = 4'd12;             
	  6'd43 : out_bits = 4'd5;             
	  6'd44 : out_bits = 4'd6;             
	  6'd45 : out_bits = 4'd3;             
	  6'd46 : out_bits = 4'd0;             
	  6'd47 : out_bits = 4'd14;             
	  6'd48 : out_bits = 4'd11;             
	  6'd49 : out_bits = 4'd8;             
	  6'd50 : out_bits = 4'd12;             
	  6'd51 : out_bits = 4'd7;             
	  6'd52 : out_bits = 4'd1;             
	  6'd53 : out_bits = 4'd14;            
	  6'd54 : out_bits = 4'd2;             
	  6'd55 : out_bits = 4'd13;            
	  6'd56 : out_bits = 4'd6;        
	  6'd57 : out_bits = 4'd15;        
	  6'd58 : out_bits = 4'd0;       
	  6'd59 : out_bits = 4'd9;       
	  6'd60 : out_bits = 4'd10;       
	  6'd61 : out_bits = 4'd4;       
	  6'd62 : out_bits = 4'd5;      
	  6'd63 : out_bits = 4'd3;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S5_Box

module S6_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd12;             
	  6'd1  : out_bits = 4'd1;             
	  6'd2  : out_bits = 4'd10;            
	  6'd3  : out_bits = 4'd15;             
	  6'd4  : out_bits = 4'd9;             
	  6'd5  : out_bits = 4'd2;             
	  6'd6  : out_bits = 4'd6;             
	  6'd7  : out_bits = 4'd8;             
	  6'd8  : out_bits = 4'd0;             
	  6'd9  : out_bits = 4'd13;             
	  6'd10 : out_bits = 4'd3;             
	  6'd11 : out_bits = 4'd4;             
	  6'd12 : out_bits = 4'd14;             
	  6'd13 : out_bits = 4'd7;             
	  6'd14 : out_bits = 4'd5;             
	  6'd15 : out_bits = 4'd11;             
	  6'd16 : out_bits = 4'd10;             
	  6'd17 : out_bits = 4'd15;             
	  6'd18 : out_bits = 4'd4;             
	  6'd19 : out_bits = 4'd2;             
	  6'd20 : out_bits = 4'd7;             
	  6'd21 : out_bits = 4'd12;             
	  6'd22 : out_bits = 4'd9;             
	  6'd23 : out_bits = 4'd5;             
	  6'd24 : out_bits = 4'd6;             
	  6'd25 : out_bits = 4'd1;             
	  6'd26 : out_bits = 4'd13;             
	  6'd27 : out_bits = 4'd14;             
	  6'd28 : out_bits = 4'd0;             
	  6'd29 : out_bits = 4'd11;             
	  6'd30 : out_bits = 4'd3;             
	  6'd31 : out_bits = 4'd8;             
	  6'd32 : out_bits = 4'd9;             
	  6'd33 : out_bits = 4'd14;             
	  6'd34 : out_bits = 4'd15;             
	  6'd35 : out_bits = 4'd5;             
	  6'd36 : out_bits = 4'd2;             
	  6'd37 : out_bits = 4'd8;             
	  6'd38 : out_bits = 4'd12;             
	  6'd39 : out_bits = 4'd3;             
	  6'd40 : out_bits = 4'd7;             
	  6'd41 : out_bits = 4'd0;             
	  6'd42 : out_bits = 4'd4;             
	  6'd43 : out_bits = 4'd10;             
	  6'd44 : out_bits = 4'd1;             
	  6'd45 : out_bits = 4'd13;             
	  6'd46 : out_bits = 4'd11;             
	  6'd47 : out_bits = 4'd6;             
	  6'd48 : out_bits = 4'd4;             
	  6'd49 : out_bits = 4'd3;             
	  6'd50 : out_bits = 4'd2;             
	  6'd51 : out_bits = 4'd12;             
	  6'd52 : out_bits = 4'd9;             
	  6'd53 : out_bits = 4'd5;            
	  6'd54 : out_bits = 4'd15;             
	  6'd55 : out_bits = 4'd10;            
	  6'd56 : out_bits = 4'd11;        
	  6'd57 : out_bits = 4'd14;        
	  6'd58 : out_bits = 4'd1;       
	  6'd59 : out_bits = 4'd7;       
	  6'd60 : out_bits = 4'd6;       
	  6'd61 : out_bits = 4'd0;       
	  6'd62 : out_bits = 4'd8;      
	  6'd63 : out_bits = 4'd13;	  
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S6_Box

module S7_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd4;             
	  6'd1  : out_bits = 4'd11;             
	  6'd2  : out_bits = 4'd2;            
	  6'd3  : out_bits = 4'd14;             
	  6'd4  : out_bits = 4'd15;             
	  6'd5  : out_bits = 4'd0;             
	  6'd6  : out_bits = 4'd8;             
	  6'd7  : out_bits = 4'd13;             
	  6'd8  : out_bits = 4'd3;             
	  6'd9  : out_bits = 4'd12;             
	  6'd10 : out_bits = 4'd9;             
	  6'd11 : out_bits = 4'd7;             
	  6'd12 : out_bits = 4'd5;             
	  6'd13 : out_bits = 4'd10;             
	  6'd14 : out_bits = 4'd6;             
	  6'd15 : out_bits = 4'd1;             
	  6'd16 : out_bits = 4'd13;             
	  6'd17 : out_bits = 4'd0;             
	  6'd18 : out_bits = 4'd11;             
	  6'd19 : out_bits = 4'd7;             
	  6'd20 : out_bits = 4'd4;             
	  6'd21 : out_bits = 4'd9;             
	  6'd22 : out_bits = 4'd1;             
	  6'd23 : out_bits = 4'd10;             
	  6'd24 : out_bits = 4'd14;             
	  6'd25 : out_bits = 4'd3;             
	  6'd26 : out_bits = 4'd5;             
	  6'd27 : out_bits = 4'd12;             
	  6'd28 : out_bits = 4'd2;             
	  6'd29 : out_bits = 4'd15;             
	  6'd30 : out_bits = 4'd8;             
	  6'd31 : out_bits = 4'd6;             
	  6'd32 : out_bits = 4'd1;             
	  6'd33 : out_bits = 4'd4;             
	  6'd34 : out_bits = 4'd11;             
	  6'd35 : out_bits = 4'd13;             
	  6'd36 : out_bits = 4'd12;             
	  6'd37 : out_bits = 4'd3;             
	  6'd38 : out_bits = 4'd7;             
	  6'd39 : out_bits = 4'd14;             
	  6'd40 : out_bits = 4'd10;             
	  6'd41 : out_bits = 4'd15;             
	  6'd42 : out_bits = 4'd6;             
	  6'd43 : out_bits = 4'd8;             
	  6'd44 : out_bits = 4'd0;             
	  6'd45 : out_bits = 4'd5;             
	  6'd46 : out_bits = 4'd9;             
	  6'd47 : out_bits = 4'd2;             
	  6'd48 : out_bits = 4'd6;             
	  6'd49 : out_bits = 4'd11;             
	  6'd50 : out_bits = 4'd13;             
	  6'd51 : out_bits = 4'd8;             
	  6'd52 : out_bits = 4'd1;             
	  6'd53 : out_bits = 4'd4;            
	  6'd54 : out_bits = 4'd10;             
	  6'd55 : out_bits = 4'd7;            
	  6'd56 : out_bits = 4'd9;        
	  6'd57 : out_bits = 4'd5;        
	  6'd58 : out_bits = 4'd0;       
	  6'd59 : out_bits = 4'd15;       
	  6'd60 : out_bits = 4'd14;       
	  6'd61 : out_bits = 4'd2;       
	  6'd62 : out_bits = 4'd3;      
	  6'd63 : out_bits = 4'd12;  
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S7_Box

module S8_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd13;             
	  6'd1  : out_bits = 4'd2;             
	  6'd2  : out_bits = 4'd8;            
	  6'd3  : out_bits = 4'd4;             
	  6'd4  : out_bits = 4'd6;             
	  6'd5  : out_bits = 4'd15;             
	  6'd6  : out_bits = 4'd11;             
	  6'd7  : out_bits = 4'd1;             
	  6'd8  : out_bits = 4'd10;             
	  6'd9  : out_bits = 4'd9;             
	  6'd10 : out_bits = 4'd3;             
	  6'd11 : out_bits = 4'd14;             
	  6'd12 : out_bits = 4'd5;             
	  6'd13 : out_bits = 4'd0;             
	  6'd14 : out_bits = 4'd12;             
	  6'd15 : out_bits = 4'd7;             
	  6'd16 : out_bits = 4'd1;             
	  6'd17 : out_bits = 4'd15;             
	  6'd18 : out_bits = 4'd13;             
	  6'd19 : out_bits = 4'd8;             
	  6'd20 : out_bits = 4'd10;             
	  6'd21 : out_bits = 4'd3;             
	  6'd22 : out_bits = 4'd7;             
	  6'd23 : out_bits = 4'd4;             
	  6'd24 : out_bits = 4'd12;             
	  6'd25 : out_bits = 4'd5;             
	  6'd26 : out_bits = 4'd6;             
	  6'd27 : out_bits = 4'd11;             
	  6'd28 : out_bits = 4'd0;             
	  6'd29 : out_bits = 4'd14;             
	  6'd30 : out_bits = 4'd9;             
	  6'd31 : out_bits = 4'd2;             
	  6'd32 : out_bits = 4'd7;             
	  6'd33 : out_bits = 4'd11;             
	  6'd34 : out_bits = 4'd4;             
	  6'd35 : out_bits = 4'd1;             
	  6'd36 : out_bits = 4'd9;             
	  6'd37 : out_bits = 4'd12;             
	  6'd38 : out_bits = 4'd14;             
	  6'd39 : out_bits = 4'd2;             
	  6'd40 : out_bits = 4'd0;             
	  6'd41 : out_bits = 4'd6;             
	  6'd42 : out_bits = 4'd10;             
	  6'd43 : out_bits = 4'd13;             
	  6'd44 : out_bits = 4'd15;             
	  6'd45 : out_bits = 4'd3;             
	  6'd46 : out_bits = 4'd5;             
	  6'd47 : out_bits = 4'd8;             
	  6'd48 : out_bits = 4'd2;             
	  6'd49 : out_bits = 4'd1;             
	  6'd50 : out_bits = 4'd14;             
	  6'd51 : out_bits = 4'd7;             
	  6'd52 : out_bits = 4'd4;             
	  6'd53 : out_bits = 4'd10;            
	  6'd54 : out_bits = 4'd8;             
	  6'd55 : out_bits = 4'd13;            
	  6'd56 : out_bits = 4'd15;        
	  6'd57 : out_bits = 4'd12;        
	  6'd58 : out_bits = 4'd9;       
	  6'd59 : out_bits = 4'd0;       
	  6'd60 : out_bits = 4'd3;       
	  6'd61 : out_bits = 4'd5;       
	  6'd62 : out_bits = 4'd6;      
	  6'd63 : out_bits = 4'd11;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S8_Box

module DES (input logic [63:0] key, input logic [63:0] plaintext, 
	    input logic encrypt, output logic [63:0] ciphertext);

   logic [47:0] 	SubKey1, SubKey2, SubKey3, SubKey4;   
   logic [47:0] 	SubKey5, SubKey6, SubKey7, SubKey8;   
   logic [47:0] 	SubKey9, SubKey10, SubKey11, SubKey12;
   logic [47:0] 	SubKey13, SubKey14, SubKey15, SubKey16;

   logic [63:0] 	ip_out;   
   
   logic [63:0]		r1_out;  
   logic [63:0]		r2_out;  
   logic [63:0]		r3_out;  
   logic [63:0]		r4_out;  
   logic [63:0]		r5_out;  
   logic [63:0]		r6_out;  
   logic [63:0]		r7_out;  
   logic [63:0]		r8_out;  
   logic [63:0]		r9_out;  
   logic [63:0]		r10_out;  
   logic [63:0]		r11_out;  
   logic [63:0]		r12_out;  
   logic [63:0]		r13_out;  
   logic [63:0]		r14_out;  
   logic [63:0]		r15_out;  
   logic [63:0]		r16_out;  
   
   // SubKey generation
   GenerateKeys k1 (key, SubKey1, SubKey2, SubKey3, SubKey4,
		    SubKey5, SubKey6, SubKey7, SubKey8,
		    SubKey9, SubKey10, SubKey11, SubKey12,
		    SubKey13, SubKey14, SubKey15, SubKey16);
   // encrypt (encrypt=1) or decrypt (encrypt=0) 
	
   // Initial Permutation (IP)
   IP b1 (plaintext, ip_out);
   // round 1
   round r1(ip_out, SubKey1, r1_out);
   // round 2
   round r2(r1_out, SubKey2, r2_out);
   // round 3
   round r3(r2_out, SubKey3, r3_out);
   // round 4
   round r4(r3_out, SubKey4, r4_out);
   // round 5
   round r5(r4_out, SubKey5, r5_out);
   // round 6
   round r6(r5_out, SubKey6, r6_out);
   // round 7
   round r7(r6_out, SubKey7, r7_out);
   // round 8
   round r8(r7_out, SubKey8, r8_out);
   // round 9
   round r9(r8_out, SubKey9, r9_out);
   // round 10
   round r10(r9_out, SubKey10, r10_out);
   // round 11
   round r11(r10_out, SubKey11, r11_out);
   // round 12
   round r12(r11_out, SubKey12, r12_out);
   // round 13
   round r13(r12_out, SubKey13, r13_out);
   // round 14
   round r14(r13_out, SubKey14, r14_out);
   // round 15
   round r15(r14_out, SubKey15, r15_out);
   // round 16
   round r16(r15_out, SubKey16, r16_out);
   
   // Final Permutation (IP^{-1}) (swap output of round16)
   FP FP({r16_out[31:0], r16_out[63:32]}, ciphertext);
   
endmodule // DES


