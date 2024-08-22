/// @description

//if keyboard_check_pressed(vk_delete) {
//	score = 0;
//	highscore_clear();
//	room_restart();
//}

if keyboard_check_pressed(vk_enter) {
	var _current_name = convertToLetter(name_chars[0]) + convertToLetter(name_chars[1]) + convertToLetter(name_chars[2]);
	
	// add user high score
	highscore_add(_current_name, score)
	
	// reset score
	score = 0;
	
	// restart game
	room_goto(rmStart);
}

if keyboard_check_pressed(vk_left) {
	if selected_letter > 0 {
		selected_letter -= 1;
	} else {
		selected_letter = 2;
	}
}

if keyboard_check_pressed(vk_right) {
	if selected_letter < 2 {
		selected_letter += 1;
	} else {
		selected_letter = 0;
	}
}

if keyboard_check_pressed(vk_up) {
	if name_chars[selected_letter] < 25 {
		name_chars[selected_letter] += 1;
	} else {
		name_chars[selected_letter] = 0;
	}
}

if keyboard_check_pressed(vk_down) {
	if name_chars[selected_letter] > 0 {
		name_chars[selected_letter] -= 1;
	} else {
		name_chars[selected_letter] = 25;
	}
}