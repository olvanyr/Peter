if invincibility <= 0
{
	with instance_create_layer(x,y,"Effects",oExplosion)
	{
		sprite_index = sShip_explosion;
	}
	screenshake(12,10);
	audio_play_sound(sndShip_explosion,1,false);
	invincibility = 120;
	flash = 1;
	
	global.life -= 1;
	
	global.bullet_count = 3;

	global.dispersion = 1;

	global.damage = 2;
	
	repeat 2
	{
		with instance_create_layer(60,60,"effects",oUpgrade)
		{
			type = choose("dispertion","damage","number","damage","number","damage","number");
		}
	}
}