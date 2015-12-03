// pulse synchronizer
module column_gradient #(parameter SCREEN_H=1024)  // vertical resolution of the screen
		    input [9:0] height,
		    input [9:0] xvcount,
                    output [23:0] pixel);

  reg [17:0] red,green;

  always @ (*)
  begin
	red = (xvcount * 8'b1) >> 10;
	green = 8'b1 - ((xvcount * 8'b1) >> 10);
  end

  assign pixel = {red[7:0],green[7:0],8'b0};
endmodule
