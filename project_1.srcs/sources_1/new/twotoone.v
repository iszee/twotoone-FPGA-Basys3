module nbasic(input clk,pb,output led1,led2,led3,led4);

reg [32:0] ctr1;
reg [32:0] ctr2;
reg [32:0] ctr3;
reg [3:0] ctr4;
reg state1,state2,state3,state4;

assign led1=state1;
assign led2=state2;
assign led3=state3;
assign led4=state4;


always @(posedge (clk))
begin
	ctr1<=ctr1+1;
	state1<=(ctr1[20]&pb);
	
end

always @(posedge (clk))
begin
	ctr2<=ctr2+1;
	state2<=(ctr2[21]&~pb);
	
	
end

always @(posedge clk)
begin
	ctr3<=ctr3+1;
	state3<=(ctr3[23]&pb);
	
	repeat(5000)
	begin
	ctr4<=ctr4+1;
	end
	
	state4<=~pb;
end

endmodule