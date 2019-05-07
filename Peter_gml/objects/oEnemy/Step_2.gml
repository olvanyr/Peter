if hp <= 0
{
	instance_destroy();
	oShip.kills += 1;
	audio_sound_pitch(sndExplosion,choose(0.9,1.0,1.1));
	audio_play_sound(sndExplosion,1,false);
	screenshake(6,4);
	with instance_create_layer(x,y,"Effects", oExplosion)
	{
		image_xscale = 2;
		image_yscale = 2;
		sprite_index = explosion3;
	}
	
	if spawn == 1
	{
		with instance_create_layer(x,y,"Effects",oUpgrade)
		{
			type = choose("dispertion","damage","number");
		}
	}
}


//destroy the instance if it goes out of the bottom of the screen
if y >= 684
{
	instance_destroy();
}

global.alive = true;