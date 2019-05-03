other.hp -= global.damage;
other.flash = 1;

instance_destroy();

with instance_create_layer(x,y,"Effects", oExplosion)
{
	image_angle = random_range(0,360);
}