/// @description
draw_set_color(c_white);

// draw score
draw_set_font(fntScore);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(0, 0, "Score: " + string(score))

// draw dead text
if dead {
	draw_set_font(fntSubTitle);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width/2, room_height/2, "Oopse, Seldar got got\nPress Any Key");
}