/// @function movePlayerH()
/// @description Move the player.

with(oPLAYER){
//X	
	//Get PLayer Input
	var inH = getPlayerInputH();
	
	//Acceleration
	
	//If Player is Trying to Move
	if(inH!=0&&canMove){
		
		//Accerate if below max speed
		if(velH*inH<mVelH) velH+=accH*inH;
		
		//Movement Sprite
		sprite_index = sPLAYERM;
		image_speed = velH/2;
	}else{
		
		//Decelerate if no Input (Includes cancellation by pressing left and right at the same time) & speed is greater than 0
		if(abs(velH)>0){
			velH-=accH*sign(velH);
		}
		
		//Idle Sprite
		sprite_index = sPLAYER
	}
	
	//Get Direction Player 
	var dirH = sign(velH);
	
	//Collision
	
	//If Going to Collide
	if(place_meeting(x+velH, y, oSOLID)){
		
		//Stop
		velH = 0;
		
		//Meet with wall every time.
		while(!place_meeting(x+dirH,y,oSOLID)){
			x+=dirH;
		}
	}
	
	//Movementin X-Axis
	x+=velH;
	
//Y
	
	//Player Input
	var inV = getPlayerInputV();
	
	//If space was pressed this step
	if(inV){
		
		//Buffer Jump for 250ms
		jumpBuffered = true;
		alarm[0] = 15;
	}
	
	//Jumping
	
	//If Touching Floor
	if(place_meeting(x,y+1,oSOLID)){
		
		//If Jump was Buffered
		if(jumpBuffered){
			
			//Remove Buffer
			jumpBuffered = false;
			
			//Increase Jump Streak
			jumpChain++;
		
			//Normal Jumps for First 2, then 3rd will br Higher
			if(jumpChain<3){
				velV = mVelV;
			}else{
				velV = mVelV*1.25;
				
				//Reset Jump Streak
				jumpChain = 0;
			}
		}else{
			
			//If not Buffered, Break Streak
			jumpChain = 0;
		}
	}
	
	//Falling
	if(!place_meeting(x,y+1,oSOLID)){
		
		//Reduce Velocity While Midair
		velV-=0.25;
		
		//Jumping Sprite
		sprite_index = sPLAYERA;
		image_speed = 0;
		if(velV>0){
			image_index = 0;
		}else{
			image_index = 1;
		}
	}
	
	//Get Direction Travelled Vertically
	var dirV = sign(velV);

	//Collision
	if(place_meeting(x, y-velV, oSOLID)){
		
		//Stop
		velV = 0;
		
		//Collide Every Time
		while(!place_meeting(x,y-dirV,oSOLID)){
			y-=dirV;
		}
	}

	//Move in Y-Axis
	y-=velV;
	
	
}
