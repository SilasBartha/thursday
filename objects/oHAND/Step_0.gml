/// @description Logic

fireRate-=1;
recoil = max(0,recoil-1);
if(mouse_check_button(mb_left) && fireRate <= 0){
	recoil = 15;
	//FIRE RATE (FRAMES)
	fireRate = 8;
	with(instance_create_layer(x,y,"PROJECTILES",oBEAM)){
		speed = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
}

x-=lengthdir_x(recoil,image_angle);
y-=lengthdir_y(recoil,image_angle);