show_debug_message(state);
switch state 
{
	case "normal" :
	{
		y += spd;
		if timer > 232.5
		{
			state = choose("line","circle","spiral");
			timer = 0;
		}
	}
	break;
	
	case "wait" :
	{
		state = choose("line","circle","spiral");
		timer = 0;
	}
	break;
	
	case "line" :
	{
		
		if timer mod 10 == 0
		{
			with instance_create_layer(x,y,"Effects", oBullet)
			{
				creator = "enemy";
				bullet_spd = 5;
				if instance_exists(oShip)
				{
					direction = point_direction(x,y,oShip.x,oShip.y)
				}else direction = other.image_angle - 90;
				var sprite = string("sBullet_") + string(other.color);
				sprite = asset_get_index(sprite);
				sprite_index = sprite;
				image_speed = 2;
			}
		}
		if timer > 200 state = "wait";
	}
	break;
	
	case "spiral" :
	{
		show_debug_message(other.timer mod 8);
		if timer mod 10 == 0
		{
			with instance_create_layer(x,y,"Effects", oBullet)
			{
				creator = "enemy";
				bullet_spd = 5;
				direction = 0 - (10 * (other.timer/10));
				var sprite = string("sBullet_") + string(other.color);
				sprite = asset_get_index(sprite);
				sprite_index = sprite;
				image_speed = 2;
			}
		}
		if timer > 200 state = "wait";
	}
	break;
	
	case "circle" :
	{
		if timer mod 80 == 0
		{
			for (var i = 0; i < 9; i++)
			{
				with instance_create_layer(x,y,"instances",oBullet)
				{
					creator = "enemy";
					bullet_spd = 3;
					direction = 0 + (45 * i);
					var color = choose("yellow","green","blue","red","orange");
					var sprite = string("sBullet_") + string(color);
					sprite = asset_get_index(sprite);
					sprite_index = sprite;
					image_speed = 2;
			
				}
			}
		}
		if timer mod 80 == 5
		{
			for (var i = 0; i < 9; i++)
			{
				with instance_create_layer(x,y,"instances",oBullet)
				{
					creator = "enemy";
					bullet_spd = 3;
					direction = 22.5 + (45 * i);
					var color = choose("yellow","green","blue","red","orange");
					var sprite = string("sBullet_") + string(color);
					sprite = asset_get_index(sprite);
					sprite_index = sprite;
					image_speed = 2;
			
				}
			}
		}
	}
	if timer > 400 state = "wait";
	break;
}

if state != "normal"
{
	x_coord = x + sin(get_timer()/800000) * 2;

	x = x_coord;
}

timer ++;