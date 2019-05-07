if creator == "enemy"
{
	with other
	{
		reduce_life();
	}
	
	instance_destroy();
}