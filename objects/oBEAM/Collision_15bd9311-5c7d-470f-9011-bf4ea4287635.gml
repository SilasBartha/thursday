/// @description dsimember
with(other){
	image_index = 1;
}
if(!stuck){	
	with(other){
		if(!dismembered){
			velH = other.hspeed/3;
			velV = -other.vspeed/3;
			dismembered = true;
			part_particles_create(ps,x,y,partDRONESHATTER,10)
		}
	}
	speed = 0;
	alarm[0] = 180;
	stuck = true;
	stuckIn = other;
	stuckDiffX = other.x-x;
	stuckDiffY = other.y-y;
}