/// @description 
move_speed = 2;
animate_speed = 0.25;
facing = 0;
invincible_timer = 0;
invincible_time = 600;

normal_color = c_orange;
invincible_color1 = c_yellow;
invincible_color2 = c_lime;

hit = function() {
	game_restart();
}