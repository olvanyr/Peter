v_move = keyboard_check(vk_down	) - keyboard_check(vk_up);
h_move = keyboard_check(vk_right) - keyboard_check(vk_left);

move_and_collide();


//shooting
if keyboard_check_pressed(vk_space)
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
		with instance_create_layer(x,y,"Effects",oBullet)
		{
			direction = other.image_angle + random_range(-other.dispersion,other.dispersion);
		}
	}
	
	
}


if invincibility > 0
{
	invincibility --;
}

show_debug_message(bullet_timer);



