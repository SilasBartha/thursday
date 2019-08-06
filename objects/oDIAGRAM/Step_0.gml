/// @description Progress Text

prog_current += spd;

if(h==0) h = sprite_get_width(image);
w = min(prog_current,sprite_get_width(image));

if(prog_current>=sprite_get_width(image))&&keyboard_check_pressed(vk_anykey){
	instance_destroy();
	oPLAYER.canMove = true;
	camera_set_view_target(view_camera[0],oPLAYER);
}