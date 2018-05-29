module TB;
  reg CLK = 0, rst = 1;
  wire[3:0] Q;
  BCD_Counter UUT(CLK ,rst, Q);
  
  initial repeat(40) #50 CLK=~CLK;
  initial #70 rst = 0;
  
endmodule