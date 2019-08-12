/// @description Draw Indicator
draw_self();
if(distance_to_object(oPLAYER)<=64&&(!instance_exists(oOUTPUTPARENT))&&instance_nearest(oPLAYER.x,oPLAYER.y,oSIGNPARENT)==self){
	draw_set_alpha(0.5);
	draw_sprite_ext(sMARKER,0,x,y-32,1,1,0,c_blue,0.5);
	draw_set_alpha(1);
}