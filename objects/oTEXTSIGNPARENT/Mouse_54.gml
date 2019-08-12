/// @description Activate
if(distance_to_object(oPLAYER)<=64&&(!instance_exists(oOUTPUTPARENT))&&instance_nearest(oPLAYER.x,oPLAYER.y,oSIGNPARENT)==self){
	with(instance_create_layer(x,y-32,"CONTROL",oTEXT)){
		text = other.text;
		length = string_length(text);
		camera_set_view_target(view_camera[0], self);
	}
}