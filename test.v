/**************************************
* Module: test
* Date:2014-10-09  
* Author: Luís     
*
* Description: Módulo para teste
***************************************/
module test;

  /* Make a reset that pulses once. */
  reg a = 0, b = 0, cin = 0;

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0,test);
        # 1 a = 0; b = 0; cin = 0; 
        # 1 a = 0; b = 0; cin = 1; 
        # 1 a = 0; b = 1; cin = 0;
        # 1 a = 0; b = 1; cin = 1;
        # 1 a = 1; b = 0; cin = 0;
        # 1 a = 1; b = 0; cin = 1;
        # 1 a = 1; b = 1; cin = 0; 
        # 1 a = 1; b = 1; cin = 1;
    end

  wire out;
  wire sum;
//  adder(Cout, Sum, A, B, Cin);
  adder A (out, sum, a, b, cin);

  initial
        //tabela verdade
     $monitor("A: %h B: %h Cin: %h Sum: %h Cout: %h", a, b, cin, sum, out);
endmodule // test

