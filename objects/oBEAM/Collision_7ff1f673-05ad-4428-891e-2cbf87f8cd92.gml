if(live){	
	with(other){
		hp-=1;
		flash = 3;
	}
	if(other.hp>0){
		instance_destroy(self);
	}
	live = false;
}