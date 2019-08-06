/// @description Draw Indicator
draw_self();
if(distance_to_object(oPLAYER)<=64&&(!instance_exists(oOUTPUTPARENT))&&instance_nearest(oPLAYER.x,oPLAYER.y,oSIGNPARENT)==self){
	draw_set_alpha(0.5);
	draw_sprite(sREADMARKER,0,x,y-sprite_height*2);
	draw_set_alpha(1);
}