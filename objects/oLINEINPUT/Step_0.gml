event_inherited();
/// @description Progress Text
if(!solved){
	text_current = keyboard_string;
}else{
	text_current = answer;
	col = c_green;
}
draw_set_font(fREAD);

h = max(string_height("ONELINE"),string_height(text_current));
w = string_width(text_current);

if(keyboard_check_pressed(vk_escape)){
	instance_destroy();
	oPLAYER.canMove = true;
	camera_set_view_target(view_camera[0],oPLAYER);
}

if(keyboard_check_pressed(vk_enter)&&!solved){
	if(keyboard_string==answer){
		col = c_green;
		solved = true;
		ent.solved = true;
		script_execute(onComplete);
	}else{
		col = c_red;
		keyboard_string = "";
	}
}
