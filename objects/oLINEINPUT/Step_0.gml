/// @description Progress Text

letters += string_length(keyboard_string);
text_current = keyboard_string;

draw_set_font(fREAD);

h = max(string_height("ONELINE"),string_height(text_current));
w = string_width(text_current);

if(keyboard_check_pressed(vk_escape)){
	instance_destroy();
	oPLAYER.canMove = true;
	camera_set_view_target(view_camera[0],oPLAYER);
}

if(keyboard_check_pressed(vk_enter)){
	if(keyboard_string==answer){
		col = c_green;
		script_execute(onComplete);
	}else{
		col = c_red;
		keyboard_string = "";
	}
}
