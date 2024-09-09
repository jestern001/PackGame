/// @description update

//if dead
if dead {
	if keyboard_check_pressed(vk_anykey) {
		room_goto(rmScore);
	}

// if not dead
} else {

	/// check inputs on a grid of size 32
	if (x - 16) % 32 == 0 and (y - 16) % 32 == 0 {
	
		if keyboard_check(vk_up) {
			direction = 90;
			speed = move_speed;
		} else if keyboard_check(vk_down) {
			direction = 270;
			speed = move_speed;
		} else if keyboard_check(vk_left) {
			direction = 180;
			speed = move_speed;
		} else if keyboard_check(vk_right) {
			direction = 0;
			speed = move_speed;
		} else {
			speed = 0;
		}
	}

	// decriment invincible timer
	if invincible_timer != 0 {
		invincible_timer -= 1;
	}

	// set animation speed
	if speed == 0 {
		image_speed = 0;
		image_index = 0;
	} else {
		image_speed = animate_speed;
	}

	// set sprite
	var _layer_id = layer_get_id("Background");
	var _bkg_id = layer_background_get_id(_layer_id);
	if invincible_timer != 0 {
		image_blend = c_grey;
	} else {
		image_blend = c_white;
	}

	/// screen wrap
	if x > room_width
		x = 0;
	if x < 0
		x = room_width;
	if y > room_height
		y = 0;
	if y < 0
		y = room_height;
}