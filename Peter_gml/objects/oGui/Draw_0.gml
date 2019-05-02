if instance_exists(oShip)
{
	draw_set_text(c_white,noone,fa_left,fa_center);
	draw_text(120,100,"remaining life : " + string(oShip.life));
}