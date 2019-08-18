/// @description Draw Dialog Box
var hw = w/2; 

//Draw
draw_set_color(col);
draw_set_alpha(0.5);

//Draw DialogBox
draw_roundrect_ext(x-hw-border, y-h-border*2, x+hw+border, y, 15,15,0);
draw_sprite_ext(sMARKER,0,x,y,1,1,0,col,0.5);

//Draw PIN Pad
//Rows
for(i=0;i<3;i++){
	//Columns
	for(j=0;j<3;j++){
		
		//Box
		draw_set_color(col);
		draw_set_alpha(0.5);
		draw_roundrect(
			((x-hw)+(30*j)+max(0,5*j-1)),
			((y-h-border+40)+(30*i)+max(0,5*i-1)),
			((x-hw)+(30*(j+1))+max(0,5*j-1)),
			((y-h-border+70)+(30*i)+max(0,5*i-1)),
			0
		);
		
		//Number in Box
		draw_set_alpha(1);
		draw_set_colour(c_black);
		draw_set_font(fREAD);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(
			((((x-hw)+(30*j)+max(0,5*j-1))+((x-hw)+(30*(j+1))+max(0,5*j-1)))/2),
			((((y-h-border+40)+(30*i)+max(0,5*i-1))+((y-h-border+70)+(30*i)+max(0,5*i-1)))/2),
			((j+1)+(i*3))
		);
		
		//TODO: Input
		
	}
}
//0 Button
draw_set_color(col);
draw_set_alpha(0.5);
draw_roundrect(
	((x-hw)+(30*1)+5),
	((y-h-border+40)+(30*3)+5*3),
	((x-hw)+(30*2)+5),
	((y-h-border+70)+(30*3)+5*3),
	0
);

//Reset Alpha
draw_set_alpha(1);

//Draw Text
draw_set_colour(c_black);
draw_set_font(fREAD);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//0 Text
draw_text(
	((((x-hw)+(30*1)+5)+((x-hw)+(30*2)+5))/2),
	((((y-h-border+40)+(30*3)+5*3)+((y-h-border+70)+(30*3)+5*3))/2),
	0
);

draw_set_valign(fa_top);
draw_text(x,y-h-border,text_current);