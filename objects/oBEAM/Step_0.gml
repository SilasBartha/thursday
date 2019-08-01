/// @description Embed Bullets in Walls

//If moving and hits wall
if(place_meeting(x,y,oSOLID)&&live){
	
	//Stop and set cleanup timer, disable looping timer setting
	speed = 0;
	alarm[0] = 180;
	live = false;
}

//If lodged in a gib, move with it
if(stuck){
	x = stuckIn.x-stuckDiffX;
	y = stuckIn.y-stuckDiffY;
}