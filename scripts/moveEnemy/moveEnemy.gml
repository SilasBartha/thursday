/// @function moveEnemy(id)
/// @description Move the enemy.
///@parma id enemy to move

//Be sure to do everything in the desired object
with(argument0){
	
//X	

	//TODO: Add horizontal input for enemies
	movH = 0;
	
	//Acceleration
	if(movH!=0){
		if(velH*movH<mVelH) velH+=accH*movH;	
	}else{
		
		//Deceleration
		if(abs(velH)>0){
			velH-=accH*sign(velH);
		}
	}
	
	//Determine Direction
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

	var movV = 0;
	
	if(movV){
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