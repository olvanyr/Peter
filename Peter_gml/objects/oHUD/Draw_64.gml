display_set_gui_size(window_get_width(),window_get_height());

var ww = display_get_gui_width();

var hh = display_get_gui_height();

if instance_exists(oShip)
{
	draw_set_text(c_white,noone,fa_left,fa_center);
	draw_text(ww/6 - 25, hh/6,"remaining life : " + string(global.life));
	
	draw_text(((ww/6) * 5) - 25, hh/6,"kills : " + string(oShip.kills));
}

//draw_sprite_stretched(sScreen,0,0,0,window_get_width(),window_get_height());
draw_sprite_stretched(sScreen,0,0,0,ww,hh);
