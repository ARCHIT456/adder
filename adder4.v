/**************************************
* Module: adder4
* Date:2014-10-09  
* Author: Luís     
*
* Description: Somador 4bits
***************************************/
module  adder4(Cout, SUM, A, B, Cin);
    output Cout;
    output [3:0] SUM;
    input [3:0] A;
    input [3:0] B;
    input Cin;
    wire carry_out;
   
//adder(Cout, Sum, A, B, Cin);
    adder2 Ad4_1 (Cout, SUM[3:2], A[3:2], B[3:2], carry_out);
    adder2 Ad4_2 (carry_out, SUM[1:0], A[1:0], B[1:0], Cin); 


endmodule

