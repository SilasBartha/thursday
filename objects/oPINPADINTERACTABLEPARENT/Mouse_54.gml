/// @description Activate
if(distance_to_object(oPLAYER)<=64&&(!instance_exists(oDIALOGBOXPARENT))&&instance_nearest(oPLAYER.x,oPLAYER.y,oOBJECTPARENT)==self){
	with(instance_create_layer(x,y-32,"CONTROL",oPINPAD)){
		text_current = "";
		answer = other.answer;
		onComplete = other.onComplete;
		camera_set_view_target(view_camera[0], self);
	}
}