/// @description Draw Dialog Box
var hw = w/2;

//Draw
draw_set_color(c_blue);
draw_set_alpha(0.5);

//Draw DialogBox
draw_roundrect_ext(x-hw-border, y-h-border*2, x+hw+border, y, 15,15,0);
draw_sprite_ext(sMARKER,0,x,y,1,1,0,c_blue,0.5);

//Reset Alpha
draw_set_alpha(1);

//Draw Text
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_sprite_stretched(image,0,x-hw,y-h,w,h);