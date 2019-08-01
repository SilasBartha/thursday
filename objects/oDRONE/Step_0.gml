/// @description Handle Interactions with User and World

//Move
moveEnemy(self);

//Gib
if(hp<=0){
	with(instance_create_layer(x,y,"PLAYER",oDRONEGIBH)){
		image_xscale = other.image_xscale;
	}
	with(instance_create_layer(x,y,"PLAYER",oDRONEGIBT)){
		image_xscale = other.image_xscale;
	}
	instance_destroy(self);
}