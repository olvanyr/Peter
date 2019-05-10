
if other.object_index == oTaxes
{
	if other.state == "normal" exit;
}

if creator == noone 
{
	other.hp -= global.damage;
	other.flash = 1;

	audio_sound_pitch(sndHit2,choose(0.9,1.0,1.1));
	audio_play_sound(sndHit2,1,false);
	
	instance_destroy();

	with instance_create_layer(x,y,"Effects", oExplosion)
	{
		image_angle = random_range(0,360);
	}
}
