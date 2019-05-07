if invincibility <= 0
{
	with instance_create_layer(x,y,"Effects",oExplosion)
	{
		sprite_index = sShip_explosion;
	}
	screenshake(12,6);
	audio_play_sound(sndShip_explosion,1,false);
	invincibility = 120;
	life -= 1;
	flash = 1;
}