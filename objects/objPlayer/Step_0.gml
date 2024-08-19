/// @description update

/// check inputs on a grid of size 32
// TODO: replace 16 with half of the sprite size to make code more robust
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

	// make body segment if invincible
	if invincible_timer != 0 {
		if not instance_place(x, y, objPlayerBodySegment) {
			var _body_segment = instance_create_layer(x, y, layer, objPlayerBodySegment);
			_body_segment.image_angle = direction;
		}
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
if invincible_timer != 0 {
	sprite_index = sprPlayerLightDragon;
	image_angle = direction;
} else {
	sprite_index = sprPlayerSelder;
	image_angle = 0;
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
