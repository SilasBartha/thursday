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
			part_particles_create(ps,x,y,partDRONESHATTER,10);
			switch(irandom_range(1,6)){
			case 1:
				audio_play_sound(smash1,0,0);
				break;
			case 2:
				audio_play_sound(smash2,0,0);
				break;
			case 3:
				audio_play_sound(smash3,0,0);
				break;
			case 4:
				audio_play_sound(smash4,0,0);
				break;
			case 5:
				audio_play_sound(smash5,0,0);
				break;
			case 6:
				audio_play_sound(smash6,0,0);
				break;
			}
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