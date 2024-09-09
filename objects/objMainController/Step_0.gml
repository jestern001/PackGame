/// @description 

// handle up/down
if keyboard_check_pressed(vk_up) {
	if selection > 0 {
		selection -= 1;
	} else {
		selection = max_selection;
	}
}

if keyboard_check_pressed(vk_down) {
	if selection < max_selection {
		selection += 1;
	} else {
		selection = 0;
	}
}

// handle left and right
if keyboard_check_pressed(vk_left) {
	if selection == 2 {
		if game_selection < max_game_selection {
			game_selection += 1;
		} else {
			game_selection = 0;
		}
	}
}

if keyboard_check_pressed(vk_right) {
	if selection == 2 {
		if game_selection > 0 {
			game_selection -= 1;
		} else {
			game_selection = max_game_selection;
		}
	}
}


// hadle enter
if keyboard_check_pressed(vk_enter) {
	audio_play_sound(sndPowerUp, 1, false)
	
	// go to room
	if selection == 0 {
		var _next_room = pointer_null;
		switch game_selection {
			case 0:
				_next_room = rmSeldarGame;
				break;
			case 1:
				_next_room = rmTim1Scene;
				break;
		}
		room_goto(_next_room);
	
	// go to score
	} else if selection == 1 {
		room_goto(rmScore);
	}
}