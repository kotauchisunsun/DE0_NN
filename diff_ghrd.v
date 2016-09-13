NN_NL_016_0002_0002_NL_016_0002_0002 NN(
    input1_0000_val,
    input1_0001_val,
    coeff1_0000_val,
    coeff1_0001_val,
    coeff1_0002_val,
    coeff1_0003_val,
    coeff2_0000_val,
    coeff2_0001_val,
    coeff2_0002_val,
    coeff2_0003_val,
    bias1_0000_val,
    bias1_0001_val,
    bias2_0000_val,
    bias2_0001_val,
    output2_0000_val,
    output2_0001_val
);  
  
wire[16:1]  input1_0000_val;
wire[16:1]  input1_0001_val;
wire[16:1]  coeff1_0000_val;
wire[16:1]  coeff1_0001_val;
wire[16:1]  coeff1_0002_val;
wire[16:1]  coeff1_0003_val;
wire[16:1]  coeff2_0000_val;
wire[16:1]  coeff2_0001_val;
wire[16:1]  coeff2_0002_val;
wire[16:1]  coeff2_0003_val;
wire[16:1]  bias1_0000_val;
wire[16:1]  bias1_0001_val;
wire[16:1]  bias2_0000_val;
wire[16:1]  bias2_0001_val;
wire[16:1]  output2_0000_val;
wire[16:1]  output2_0001_val;

parameter one  = 16'h0100;
parameter zero = 16'h0000;  
  
assign   input1_0000_val =  SW[0] ? one : zero;
assign   input1_0001_val =  SW[1] ? one : zero;
assign  coeff1_0000_val =  one;
assign  coeff1_0001_val =  one;
assign  coeff1_0002_val =  one;
assign  coeff1_0003_val =  one;
assign  coeff2_0000_val =  SW[2] ? one : zero;
assign   coeff2_0001_val =  SW[3] ? one : zero;
assign  coeff2_0002_val =  one;
assign  coeff2_0003_val =  one;
assign  bias1_0000_val  =  zero;
assign  bias1_0001_val  =  zero;
assign  bias2_0000_val  =  zero;
assign  bias2_0001_val  =  zero;

assign LED[0] = output2_0000_val == one ? 1 : 0;
assign LED[1] = output2_0001_val == one ? 1 : 0;

