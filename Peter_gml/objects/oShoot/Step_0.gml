

if irandom(100) == 1
{
	with instance_create_layer(x,y,"instances",oBullet)
	{
		creator = "enemy";
		spd = 1;
		if instance_exists(oShip)
		{
			direction = point_direction(x,y,oShip.x,oShip.y)
		}else direction = other.image_angle - 90;
	}
}