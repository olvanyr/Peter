event_inherited();

//set the orientation of the sprite to down
image_angle = 90;

/// movment
hsp = 0;
vsp = 0;
h_move = 0;
v_move = 0;

move_spd = 6;


//ammo

//how many bullet every 30 frames
shooting_time = 30;
global.bullet_count = 3;

bullet_timer = shooting_time;
global.dispersion = 1;


spacing = 0;

// life
life = 3;

invincibility = 0;

if !instance_exists(oGUI)
{
	instance_create_layer(x,y,"Instances", oGUI);
}