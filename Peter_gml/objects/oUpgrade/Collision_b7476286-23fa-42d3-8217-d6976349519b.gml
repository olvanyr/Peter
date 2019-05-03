switch type
{
	case "number" : 
	{
		global.bullet_count += 2;
	}
	break;
	case "dispertion" : 
	{
		global.dispersion += 2;
	}
	break;
	case "damage" : 
	{
		global.damage += 2;
	}
	break;
	
}

instance_destroy();

