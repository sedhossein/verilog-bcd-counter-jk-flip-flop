module BCD_Counter(input clk, rst, output [3:0] Q);
  
  jkfflop first(1'b1 , 1'b1, clk ,rst, Q[0]);
  
  jkfflop second(~Q[3],~Q[3],Q[0],rst, Q[1]);
  
  jkfflop third(1'b1 , 1'b1 , Q[1] ,rst,Q[2]);

  jkfflop fourth(Q[1]&Q[2] , Q[3] , Q[0] ,rst, Q[3]);

endmodule