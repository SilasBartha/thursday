/// @description Progress Text

draw_set_font(fREAD);

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
