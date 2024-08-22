/// @description draw high scores
draw_set_halign(fa_center);
draw_set_valign(fa_top);

// draw title
draw_set_font(fntSubTitle)
draw_set_color(c_white);
if score != 0 {
	draw_text(room_width/2, 50, "High Scores\nYour Score: " + string(score));
} else {
	draw_text(room_width/2, 50, "High Scores");
}

// draw scores
draw_set_font(fntScore);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_highscore(room_width/4, room_height/4, room_width*3/4, room_height*3/4);

// your score
draw_set_halign(fa_center);
draw_set_valign(fa_top);
if new_high_score {
	// draw prompt
	draw_text(room_width/2, room_height - 150, "NEW HIGH SCORE!!!");

	// draw name entry
	draw_set_color(selected_letter == 0 ? c_orange : c_white);
	draw_text(room_width/2 - 20, room_height - 90, convertToLetter(name_chars[0]));

	draw_set_color(selected_letter == 1 ? c_orange : c_white);
	draw_text(room_width/2, room_height - 90, convertToLetter(name_chars[1]));

	draw_set_color(selected_letter == 2 ? c_orange : c_white);
	draw_text(room_width/2 + 20, room_height - 90, convertToLetter(name_chars[2]));
}

// darw instructions
draw_text(room_width/2, room_height - 50, new_high_score ? "Press Enter To Save and Try Again" : "Press Enter To Try Again")
