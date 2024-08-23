/// @description 
score += 1
with other {instance_destroy();}
audio_play_sound(sndAThing, 1, false);
if instance_number(objPellet) == 0 {
	score += 100;
	room_restart();
	audio_play_sound(sndPowerUp, 1, false);
}