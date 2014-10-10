/**************************************
* Module: adder2
* Date:2014-10-09  
* Author: Luís     
*
* Description: Somador completo
***************************************/
module  adder2(Cout, SUM, A, B, Cin);
    output Cout;
    output [1:0] SUM;
    input [1:0] A;
    input [1:0] B;
    input Cin;
    wire c1;
    
    //adder(Cout, Sum, A, B, Cin);
    adder Ad2_1 (.Cout(Cout), .Sum(SUM[1]), .A(A[1]), .B(B[1]), .Cin(c1));
    adder Ad2_2 (c1, SUM[0], A[0], B[0], Cin);   


endmodule

