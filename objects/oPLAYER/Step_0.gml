/// @description Handle Interactions with User and World

//Move
movePlayer();

//Look in direction gun is pointed
lookdir = point_direction(x,y,mouse_x,mouse_y);

if(lookdir>90&&lookdir<270){
	image_xscale = -1;
}else{
	image_xscale = 1;
}