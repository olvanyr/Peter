if (keyboard_check(vk_left))
{
	image_xscale = -1;
	x = x - vit;
}
if (keyboard_check(vk_right))
{
	image_xscale = 1;
	x = x + vit;
}
if (keyboard_check(vk_up))
{
	image_yscale = 1;
	y = y - vit;
}
if (keyboard_check(vk_down))
{
	image_yscale = -1;
	y = y + vit;
}