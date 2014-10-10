/**************************************
* Module: adder
* Date:2014-10-09  
* Author: Luís     
*
* Description: Somador simples
***************************************/
module  adder(Cout, Sum, A, B, Cin);
    output Cout, Sum;
    input A, B, Cin;
    
    and I1 (i1_out, A, B);
    xor I2 (i2_out, A, B);
    
    and J1 (j1_out, i2_out, Cin);
    xor J2 (Sum, i2_out, Cin);
    
    or K1 (Cout, i1_out, j1_out);
endmodule

