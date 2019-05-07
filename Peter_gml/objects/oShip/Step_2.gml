if life <= 0
{
	global.lvl = "fiered";
	room_goto(rFiered);
	instance_destroy();
}

//juste use to reset th alive cunter 
global.alive = 0;