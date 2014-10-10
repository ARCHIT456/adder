/**************************************
* Module: adder8
* Date:2014-10-09  
* Author: Luís     
*
* Description: Sobador 8bits
***************************************/
module  adder8(Cout, SUM, A, B, Cin);
    output Cout;
    output [7:0] SUM;
    input [7:0] A;
    input [7:0] B;
    input Cin;
    wire carry_out;
   
//adder(Cout, Sum, A, B, Cin);
    adder2 Ad8_1 (Cout, SUM[7:4], A[7:4], B[7:4], carry_out);
    adder2 Ad8_2 (carry_out, SUM[3:0], A[3:0], B[3:0], Cin); 


endmodule

