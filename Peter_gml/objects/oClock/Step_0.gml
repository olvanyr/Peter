

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

y += spd;

timer ++;