/// @description Embed Bullets in Walls
if(place_meeting(x,y,oSOLID)&&live){
	speed = 0;
	alarm[0] = 180;
	live = false;
}
if(stuck){
	x = stuckIn.x-stuckDiffX;
	y = stuckIn.y-stuckDiffY;
}