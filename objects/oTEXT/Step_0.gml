/// @description Progress Text

letters += spd;
text_current = string_copy(text,1,floor(letters));

draw_set_font(fREAD);

if(h==0) h = string_height(text);
w = string_width(text_current);

if(keyboard_check_pressed(vk_escape)){
	instance_destroy();
	oPLAYER.canMove = true;
	camera_set_view_target(view_camera[0],oPLAYER);
}