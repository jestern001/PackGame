/// @description 
move_speed = 2;
animate_speed = 1;
facing = 0;
invincible_timer = 0;
invincible_time = 300;

normal_color = c_white;
invincible_color1 = c_yellow;
invincible_color2 = c_lime;

dead = false;

hit = function() {
	x = -300;
	y = -300;
	dead = true;
}