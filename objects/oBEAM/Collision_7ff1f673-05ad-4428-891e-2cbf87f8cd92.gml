//If moving
if(live){	
	
	//Harm Drone
	with(other){
		hp-=1;
		flash = 3;
	}
	
	//Break if drone resists
	if(other.hp>0){
		instance_destroy(self);
	}
	
	//Disable
	live = false;
}