
module MUL_16 ( A, B, out ) ;
parameter width = 16;
parameter half      = width/2;
input  [width:1] A,B;
output [width:1] out ;
wire [2*width:1] temp;

assign temp = A*B;
assign out = temp[half+width:half+1];

endmodule 

//-------------------------------------------------


module NM_016_0002(in_0000,in_0001,coeff_0000,coeff_0001,bias,out);
parameter width = 16;

input [width:1] in_0000,in_0001,bias;
input [width:1] coeff_0000,coeff_0001;
output out;
wire [width:1] results_0000,results_0001;
wire [width:1] add_result;

MUL_16 m0000 ( in_0000  , coeff_0000 , results_0000 );
MUL_16 m0001 ( in_0001  , coeff_0001 , results_0001 );
assign add_result = results_0000 + results_0001 + bias;

assign out = add_result!=0 && ~add_result[width];

endmodule


module NL_016_0002_0002(input_0000,input_0001,coeff_0000_for_nn_unit0000,coeff_0001_for_nn_unit0000,coeff_0000_for_nn_unit0001,coeff_0001_for_nn_unit0001,bias_0000,bias_0001,output_0000,output_0001);
parameter width = 16;
input wire [width:1] input_0000;
input wire [width:1] input_0001;
input [width:1] bias_0000;
input [width:1] bias_0001;
input wire [width:1] coeff_0000_for_nn_unit0000;
input wire [width:1] coeff_0001_for_nn_unit0000;
input wire [width:1] coeff_0000_for_nn_unit0001;
input wire [width:1] coeff_0001_for_nn_unit0001;
output wire [width:1] output_0000;
output wire [width:1] output_0001;
wire nn_output_0000;
wire nn_output_0001;
NM_016_0002 nn_unit0000(input_0000,input_0001,coeff_0000_for_nn_unit0000,coeff_0001_for_nn_unit0000,bias_0000,nn_output_0000);
NM_016_0002 nn_unit0001(input_0000,input_0001,coeff_0000_for_nn_unit0001,coeff_0001_for_nn_unit0001,bias_0001,nn_output_0001);
assign output_0000 = (nn_output_0000) << (width/2);
assign output_0001 = (nn_output_0001) << (width/2);

endmodule


module NN_NL_016_0002_0002_NL_016_0002_0002(input1_0000_val,input1_0001_val,coeff1_0000_val,coeff1_0001_val,coeff1_0002_val,coeff1_0003_val,coeff2_0000_val,coeff2_0001_val,coeff2_0002_val,coeff2_0003_val,bias1_0000_val,bias1_0001_val,bias2_0000_val,bias2_0001_val,output2_0000_val,output2_0001_val);
parameter width = 16;
input wire [width:1] input1_0000_val;
input wire [width:1] input1_0001_val;
input wire [width:1] bias1_0000_val;
input wire [width:1] bias1_0001_val;
wire [width:1] input2_0000_val;
wire [width:1] input2_0001_val;
input wire [width:1] bias2_0000_val;
input wire [width:1] bias2_0001_val;
input wire [width:1] coeff1_0000_val;
input wire [width:1] coeff1_0001_val;
input wire [width:1] coeff1_0002_val;
input wire [width:1] coeff1_0003_val;
input wire [width:1] coeff2_0000_val;
input wire [width:1] coeff2_0001_val;
input wire [width:1] coeff2_0002_val;
input wire [width:1] coeff2_0003_val;
output wire [width:1] output2_0000_val;
output wire [width:1] output2_0001_val;
NL_016_0002_0002 nl1(input1_0000_val,input1_0001_val,coeff1_0000_val,coeff1_0001_val,coeff1_0002_val,coeff1_0003_val,bias1_0000_val,bias1_0001_val,input2_0000_val,input2_0001_val);
NL_016_0002_0002 nl2(input2_0000_val,input2_0001_val,coeff2_0000_val,coeff2_0001_val,coeff2_0002_val,coeff2_0003_val,bias2_0000_val,bias2_0001_val,output2_0000_val,output2_0001_val);

endmodule

