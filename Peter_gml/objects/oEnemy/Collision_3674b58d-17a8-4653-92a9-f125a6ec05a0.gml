hp -= other.damage;
flash = 1;

instance_destroy(other);

with instance_create_layer(other.x,other.y,"Effects", oExplosion)
{
	image_angle = random_range(0,360);
}