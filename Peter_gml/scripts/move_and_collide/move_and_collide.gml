vsp = v_move * move_spd;
hsp = h_move * move_spd;


if place_meeting(x + hsp, y, oWall)
{
	hsp = 0;
}

x += hsp;

if place_meeting(x, y + vsp, oWall)
{
	vsp = 0;
}

y += vsp;
