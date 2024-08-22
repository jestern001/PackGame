/// @description 

if keyboard_check_pressed(vk_up) {
	if selection > 0 {
		selection -= 1;
	} else {
		selection = 1;
	}
}

if keyboard_check_pressed(vk_down) {
	if selection < 1 {
		selection += 1;
	} else {
		selection = 0;
	}
}

if keyboard_check_pressed(vk_enter) {
	if selection == 0 {
		room_goto(rmGame);
	} else if selection == 1 {
		room_goto(rmScore);
	}
}