if alpha < 1 alpha += 0.007;
else
{
	if oInput.shoot || oInput.start
	{
		room_goto_next();
	}
}