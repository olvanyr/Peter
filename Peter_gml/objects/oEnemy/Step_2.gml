if hp <= 0
{
	instance_destroy();
	with instance_create_layer(x,y,"Effects", oExplosion)
	{
		image_xscale = 2;
		image_yscale = 2;
		sprite_index = explosion3;
	}
}