/// @description
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// draw title
draw_set_font(fntTitle);
draw_text(room_width/2, 0, "Seldar &\nThe Sacred\nStones");

// draw press any key
var _text = ""
if selection == 0 {
	_text = ">Start<\nHighscores";
} else if selection == 1 {
	_text = "Start\n>Highscores<";
}

draw_set_font(fntScore);
draw_set_halign(fa_center);
draw_text(room_height*5/8, room_width/3, _text);