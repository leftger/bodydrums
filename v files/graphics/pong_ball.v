////////////////////////////////////////////////////////////////////////////////
//
// pong_ball: an instance of the pong ball!
//
////////////////////////////////////////////////////////////////////////////////

module pong_ball #(parameter SCRN_WIDTH = 1024, SCRN_HEIGHT = 768,
	PUCK_W = 110, PUCK_H = 59, PADDLE_H = 128, PADDLE_W = 16)
(
   input vsync,  // vsync
   input vclock,	// 65MHz clock
   input reset,		// 1 to initialize module
	input up,		// 1 when paddle should move up
   input down,  	// 1 when paddle should move down
   input [3:0] pspeed,  // puck speed in pixels/tick 
   input [10:0] hcount,	// horizontal index of current pixel (0..1023)
   input [9:0] vcount, // vertical index of current pixel (0..767)
   input enabled,
   output [23:0] pixel	// pong game's pixel  // r=23:16, g=15:8, b=7:0 
   );



	// wires and instatiations of blobs and alpha blender
	reg [10:0] x_pos;
	reg [9:0] y_pos;
	reg [1:0] direction;
	reg [9:0]  paddle_y;
	wire [23:0] paddle_pixel;
	
	
	blob #(.WIDTH(PADDLE_W),.HEIGHT(PADDLE_H),.COLOR(24'hFF_FF_00))   // yellow!
		  paddle(.x(11'd0),.y(paddle_y),.hcount(hcount),.vcount(vcount),
		  .pixel(paddle_pixel));
	
	// puck blob				 
	wire [23:0] puck_pixel;
	mit_logo_blob puck(.pixel_clk(vclock),.x(x_pos), .y(y_pos),.hcount(hcount),
			.vcount(vcount),.pixel(puck_pixel));

   /*module mit_logo_blob
   #(parameter WIDTH = 110, HEIGHT = 59)
   (input pixel_clk,
   input [10:0] x,hcount,
   input [9:0] y,vcount,
   output reg [23:0] pixel
   );*/
	
	// alpha blender module
	// wire [23:0] blended_pixel;
	// wire enabled;
	// assign enabled  = bigred_pixel && puck_pixel;
	// alpha_blender theblend (.enabled(enabled),.obj_one(puck_pixel),.obj_two(bigred_pixel),.blended(blended_pixel));
	
	// gotta put them pixels on that screen :)
	assign pixel = enabled ? (puck_pixel | paddle_pixel) : puck_pixel;
	
	// initial state
	initial begin
		x_pos = (SCRN_WIDTH - PUCK_W) >> 1;
		y_pos = (SCRN_HEIGHT - PUCK_H) >> 1;
		direction = 2'b00;
		paddle_y <= (SCRN_HEIGHT - PADDLE_H) >> 1;
	end
	
	always@(negedge vsync) begin
		// conditions on reset
		if(reset) begin
			x_pos <= (SCRN_WIDTH - PUCK_W) >> 1;
			y_pos <= (SCRN_HEIGHT - PUCK_H) >> 1;
			direction <= 2'b00;
			paddle_y <= (SCRN_HEIGHT - PADDLE_H) >> 1;
		end
		else begin
			// if puck hits upper bound
			if(y_pos - pspeed <= 10)begin
				direction[0] <= 1;
			end
			// if it hits lower bound
			else if ((y_pos + PUCK_H) + pspeed >= SCRN_HEIGHT - 10) begin
				direction[0] <= 0;
			end
			// if it hits left bound
			if(x_pos - pspeed <= 10)begin
				if ((paddle_y < y_pos + PUCK_H ) && (paddle_y + PADDLE_H > y_pos) ) begin
					direction[1] <= 0;
				end
				// otherwise end the game
				else begin
					x_pos <= (SCRN_WIDTH - PUCK_W) >> 1;
					y_pos <= (SCRN_HEIGHT - PUCK_H) >> 1;
				end
			end
			// if it hits right bound
			else if((x_pos + PUCK_W) + pspeed >= SCRN_WIDTH-10) begin
				direction[1] <= 1;
			end
			// change position of puck if the game is running
			if (enabled) begin
			case(direction)
				2'b00: begin x_pos <= x_pos + pspeed; y_pos <= y_pos - pspeed; end
				2'b01: begin x_pos <= x_pos + pspeed; y_pos <= y_pos + pspeed; end
				2'b10: begin x_pos <= x_pos - pspeed; y_pos <= y_pos - pspeed; end
				2'b11: begin x_pos <= x_pos - pspeed; y_pos <= y_pos + pspeed; end
			endcase
			end
			
			// paddle y position
			if(up && paddle_y > 0) begin
				paddle_y <= paddle_y - 4;
			end else if(down && (paddle_y + PADDLE_H) < 767) begin
				paddle_y <= paddle_y + 4;
			end

		end
	end
	
	
endmodule

module blob
   #(parameter WIDTH = 64,            // default width: 64 pixels
               HEIGHT = 64,           // default height: 64 pixels
               COLOR = 24'hFF_FF_FF)  // default color: white
   (input [10:0] x,hcount,
    input [9:0] y,vcount,
    output reg [23:0] pixel);

   always @ * begin
      if ((hcount >= x && hcount < (x+WIDTH)) &&
	 (vcount >= y && vcount < (y+HEIGHT)))
	pixel = COLOR;
      else pixel = 0;
   end
endmodule

module alpha_blender (input enabled, input [23:0] obj_one, input [23:0] obj_two,
	output[23:0] blended);
	// for this purpose alpha will be 5/8ths
	assign blended[7:0] = enabled ? 
		(obj_one[7:0] >> 3) * 5 + (obj_two[7:0] >> 3) * 3 : obj_one[7:0];
	assign blended[15:8] = enabled ?
	(obj_one[15:8] >> 3) * 5 + (obj_two[15:8] >> 3) * 3 : obj_one[15:8];
	assign blended[23:16] = enabled ? 
	(obj_one[23:16] >> 3) * 5 + (obj_two[23:16] >> 3) * 3 : obj_one[23:16];
endmodule
