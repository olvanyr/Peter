if invincibility <= 60
{
	v_move = oInput.down - oInput.up;
	h_move = oInput.right - oInput.left;
}else
{
	v_move = 0;
	h_move = 0;
}

move_and_collide();


//shooting
if global.bullet_count >= 30 global.bullet_count = 30; 
if global.dispersion >= 30 global.dispersion = 30;


fire_spd = shooting_time / global.bullet_count;

if invincibility <= 0
{
	if oInput.shoot
	{
		if bullet_timer >= shooting_time 
		{
			bullet_timer = 0;
			spacing = 0;
		}
	}

	if bullet_timer <= shooting_time bullet_timer++;

	// create multiple bullet so you dont realy have to smash the keyboard
	if bullet_timer <= shooting_time
	{
		if bullet_timer >= spacing
		{
			spacing += fire_spd;
			audio_sound_pitch(sndBullet4,choose(0.9,1.0,1.1));
			audio_play_sound(sndBullet4,0,false);
			screenshake(3,4);
			with instance_create_layer(x,y,"Effects",oBullet)
			{
				direction = other.image_angle + random_range(-global.dispersion,global.dispersion);
			}
		}
	}
}


if invincibility > 0
{
	invincibility --;
}


