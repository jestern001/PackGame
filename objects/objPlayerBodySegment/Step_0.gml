/// @description remove after invincible
if not instance_exists(objPlayer) or objPlayer.invincible_timer == 0 {
	instance_destroy();
}
