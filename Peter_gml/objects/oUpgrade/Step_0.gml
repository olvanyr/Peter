if vsp == 0 || hsp == 0
{
	direction += choose(90, 180, 270);
}

h_move = lengthdir_x(1,direction);
v_move = lengthdir_y(1,direction);

move_and_collide();

switch type
{
	case "number" : 
	{
		sprite_index = sNumber;
	}
	break;
	case "dispertion" : 
	{
		sprite_index = sDispertion;
	}
	break;
	case "damage" : 
	{
		sprite_index = sDamage;
	}
	break;
	
}