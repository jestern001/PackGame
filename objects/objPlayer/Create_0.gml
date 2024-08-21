/// @description 
move_speed = 2;
animate_speed = 1;
facing = 0;
invincible_timer = 0;
invincible_time = 300;

previous_segment = pointer_null;

normal_color = c_white;
invincible_color1 = c_yellow;
invincible_color2 = c_lime;

hit = function() {
	score = 0;
	game_restart();
}