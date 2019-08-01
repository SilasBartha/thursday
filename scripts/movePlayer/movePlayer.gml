/// @function movePlayerH()
/// @description Move the player.

with(oPLAYER){
//X	
	var inH = getPlayerInputH();
	
	//Acceleration
	if(inH!=0){
		if(velH*inH<mVelH) velH+=accH*inH;	
		sprite_index = sPLAYERM;
		image_speed = velH/2;
	}else{
		if(abs(velH)>0){
			velH-=accH*sign(velH);
		}
		sprite_index = sPLAYER
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

	var inV = getPlayerInputV();
	
	if(inV){
		jumpBuffered = true;
		alarm[0] = 15;
	}
	
	if(place_meeting(x,y+1,oSOLID)){
		if(jumpBuffered){
			jumpBuffered = false;
			jumpChain++;
		
			if(jumpChain<3){
				velV = mVelV;
			}else{
				velV = mVelV*1.25;
				jumpChain = 0;
			}
		}else{
			jumpChain = 0;
		}
	}
	
	if(!place_meeting(x,y+1,oSOLID)){
		velV-=0.25;
		sprite_index = sPLAYERA;
		image_speed = 0;
		if(velV>0){
			image_index = 0;
		}else{
			image_index = 1;
		}
	}
	
	var dirV = sign(velV);

	//Collision
	if(place_meeting(x, y-velV, oSOLID)){
		velV = 0;
		while(!place_meeting(x,y-dirV,oSOLID)){
			y-=dirV;
		}
	}

	y-=velV;
	
	
}