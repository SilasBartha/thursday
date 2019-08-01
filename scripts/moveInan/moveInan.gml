/// @function moveInan(id)
/// @description Move the enemy.
///@parma id enemy to move

accH = 0.25;

with(argument0){
//X	

	if(abs(velH)>0){
		velH -=accH*sign(velH);
		if(!abs(velH)>0){
			velH = 0;
		}
	}
	
	var dirH = sign(velH);
	
	//Collision
	if(place_meeting(x+velH, y, oSOLID)){
		velH = 0;
		while(!place_meeting(x+dirH,y,oSOLID)){
			x+=dirH;
		}
	}
	
	//Movement
	x+=velH;
	
//Y
	
	if(!place_meeting(x,y+1,oSOLID)){
		velV-=0.25;
	}
	
	var movV = sign(velV);

	//Collision
	if(place_meeting(x, y-velV, oSOLID)){
		velV = 0;
		while(!place_meeting(x,y-movV,oSOLID)){
			y-=movV;
		}
	}

	y-=velV;
	
	
}