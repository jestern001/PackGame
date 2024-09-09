/// @description
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// draw title
draw_set_font(fntTitle);
var _game_title = "";
var _bkg = pointer_null;

// get settings
switch game_selection {
	case 0:
		_game_title = "Seldar &\nThe Sacred\nStones";
		_bkg = bkgOpeningBackgroundSeldar;
		break;
	case 1:
		_game_title = "Tim's\nOcarina";
		_bkg = bkgOpeningBackgroundTim;
		break;
}

// update resources
draw_text(room_width/2, 0, _game_title);
if (layer_background_get_sprite(background_id) != _bkg)
{
    layer_background_sprite(background_id, _bkg);
}

// draw press any key
var _text = ""
switch selection {
	case 0:
		_text = ">Start<\nHighscores\nGame";
		break;
	case 1: 
		_text = "Start\n>Highscores<\nGame";
		break;
	case 2:
		_text = "Start\nHighscores\n>Game<";
		break;
}
	

draw_set_font(fntScore);
draw_set_halign(fa_center);
draw_text(room_height*5/8, room_width/3, _text);