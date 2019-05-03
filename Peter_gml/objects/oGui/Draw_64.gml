

if instance_exists(oShip)
{
	draw_set_text(c_white,noone,fa_left,fa_center);
	draw_text(120,100,"remaining life : " + string(oShip.life));
}

draw_sprite_stretched(sScreen,0,0,0,window_get_width(),window_get_height());
draw_sprite_stretched(sScreen,0,0,0,window_get_width(),window_get_height());
