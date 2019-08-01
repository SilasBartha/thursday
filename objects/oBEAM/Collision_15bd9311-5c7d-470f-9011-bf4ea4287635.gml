/// @description dismemberment
with(other){
	image_index = 1;
}

//If not already embedded in a gib
if(!stuck){	
	
	//With gib
	with(other){
		if(!shot){
			
			//Impulse
			velH = other.hspeed/3;
			velV = -other.vspeed/3;
			
			//Dismember, show shatter effect
			dismembered = true;
			shot = true;
			part_particles_create(ps,x,y,partDRONESHATTER,10)
		}
	}
	
	//Get lodged
	speed = 0;
	alarm[0] = 180;
	stuck = true;
	stuckIn = other;
	stuckDiffX = other.x-x;
	stuckDiffY = other.y-y;
}