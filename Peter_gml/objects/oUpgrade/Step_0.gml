if vsp == 0 || hsp == 0
{
	direction += choose(90, 180, 270);
}

h_move = lengthdir_x(1,direction);
v_move = lengthdir_y(1,direction);

show_debug_message(h_move);

move_and_collide();

switch type
{
	case "number" : 
	{
		sprite_index = sNumber;
	}
	break;
	
}