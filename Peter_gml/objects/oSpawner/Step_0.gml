timer ++;

//sin 
if timer > 120 && timer < 420
{
	if timer mod 30 == 0
	{
		with instance_create_layer(x,y,"Instances",oSin)
		{
			ondulation_spd = 100;
			emplitude = 3;
			spd = 2;
			hp = 5;
			hp_max = hp;
		}
	}
}

if timer == 420
{
	with instance_create_layer(x,y,"Instances",oSin)
	{
		ondulation_spd = 100;
		emplitude = 3;
		spd = 2;
		hp = 25;
		hp_max = hp;
		sprite_index = sEnemy_arrow1;
		spawn = true;
	}
}

if timer == 300
{
	with instance_create_layer(x - 300,y,"Instances",oMail)
	{
		spd = 2;
		hp = 5;
		hp_max = hp;
	}
	with instance_create_layer(x,y,"Instances",oMail)
	{
		spd = 2;
		hp = 5;
		hp_max = hp;
	}
	with instance_create_layer(x + 300,y,"Instances",oMail)
	{
		spd = 2;
		hp = 5;
		hp_max = hp;
	}
}


//sin 
if timer > 800 && timer < 1120
{
	if timer mod 30 == 0
	{
		with instance_create_layer(x,y,"Instances",oSin)
		{
			ondulation_spd = -100;
			emplitude = 3;
			spd = 2;
			hp = 5;
			hp_max = hp;
		}
	}
}

if timer == 920
{
	with instance_create_layer(x,y,"Instances",oSin)
	{
		ondulation_spd = -100;
		emplitude = 3;
		spd = 2;
		hp = 25;
		hp_max = hp;
		sprite_index = sEnemy_arrow1;
		spawn = true;
	}
}


if timer == 1500
{
	with instance_create_layer(x - 150 + 50,y,"Instances",oCircle)
	{
		spd = 1;
		hp = 8;
		hp_max = hp;
	}
	with instance_create_layer(x + 50,y,"Instances",oCircle)
	{
		spd = 1;
		hp = 8;
		hp_max = hp;
		orbital_spd = -1;
	}
	with instance_create_layer(x + 150 + 50,y,"Instances",oCircle)
	{
		spd = 1;
		hp = 8;
		hp_max = hp;
		spawn = true;
	}
}