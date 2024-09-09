/// @description 
move_speed = 2;
animate_speed = 1;
invincible_timer = 0;
invincible_time = 300;
dead = false;

hit = function() {
	x = -300;
	y = -300;
	dead = true;
	audio_stop_sound(snd);
	audio_play_sound(sndOhNo, 1, false);
}