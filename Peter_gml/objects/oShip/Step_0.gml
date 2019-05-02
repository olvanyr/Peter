v_move = keyboard_check(vk_down	) - keyboard_check(vk_up);
h_move = keyboard_check(vk_right) - keyboard_check(vk_left);

move_and_collide();

if keyboard_check_pressed(vk_space)
{
	if bullet_timer == 0 bullet_timer = 3;
}

if bullet_timer > 0
{
	
	if frac(bullet_timer) == 1 || frac(bullet_timer) == 0
	{
		instance_create_layer(x,y,"Effects",oBullet);
	}
	bullet_timer -= 0.25;
}

