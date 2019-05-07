

if spd == 0 && timer mod 60 == 0
{
	with instance_create_layer(x,y,"instances",oBullet)
	{
		creator = "enemy";
		bullet_spd = 5;
		if instance_exists(oShip)
		{
			direction = point_direction(x,y,oShip.x,oShip.y)
		}else direction = other.image_angle - 90;
	}
}


spd = 0;

if timer < 150
{
	spd = 1;
}

if timer > 1500
{
	spd = 3;
}

y += spd;

timer ++;