event_inherited();
/// @description Progress Text
var hw = w/2; 

draw_set_font(fREAD);

if(keyboard_check_pressed(vk_escape)){
	instance_destroy();
	oPLAYER.canMove = true;
	camera_set_view_target(view_camera[0],oPLAYER);
}

//PIN Input
//Rows
for(i=0;i<3;i++){
	//Columns
	for(j=0;j<3;j++){
		if(point_in_rectangle(
			mouse_x,
			mouse_y,
			((x-hw)+(30*j)+max(0,5*j-1)),
			((y-h-border+40)+(30*i)+max(0,5*i-1)),
			((x-hw)+(30*(j+1))+max(0,5*j-1)),
			((y-h-border+70)+(30*i)+max(0,5*i-1))
		)&&mouse_check_button_pressed(mb_left)){
			if(string_length(text_current)==4){
				text_current = "";
				col = c_yellow;
			}
			text_current+=string((j+1)+(i*3));
		}
	}
}

//0 Button
if(point_in_rectangle(
	mouse_x,
	mouse_y,
	((x-hw)+(30*1)+5),
	((y-h-border+40)+(30*3)+5*3),
	((x-hw)+(30*2)+5),
	((y-h-border+70)+(30*3)+5*3)
)&&mouse_check_button_pressed(mb_left)){
	if(string_length(text_current)==4){
		text_current = "";
		col = c_yellow;
	}
	text_current+="0";
}


if(string_length(text_current)==4){
	if(text_current==string(answer)){
		col = c_green;
		script_execute(onComplete);
	}else{
		col = c_red;
	}
}
