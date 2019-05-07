timer ++;

switch global.lvl
{
	#region lvl 1
	case 1 : 
	{
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
		//sin blue
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
		
		//mail * 3
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
		
		//sin bleu
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

		//circle
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
		
		//mail shooting
		if timer == 1900
		{
			with instance_create_layer(x + 150 + 50,y,"Instances",oShoot)
			{
				hp = 60;
				spawn = true;
			}
		}
		
		if timer == 1930
		{
			with instance_create_layer(x - 150,y,"Instances",oShoot)
			{
				hp = 60;
				spawn = true;
			}
		}

		if timer > 2100 
		{
			with all
			{
				if global.alive == 0
				{
					room_goto(rOffice1);
					global.lvl = 2;
			
			
				}
			}
		}
	}
	break;
	#endregion
	#region lvl 2
	case 2 : 
	{
		#region sin 1
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
		//sin blue
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
		
		//sin 
		if timer > 120 && timer < 420
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
		//sin blue
		if timer == 420
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
		#endregion
		


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
		
		//sin bleu
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

		//circle
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
		
		//mail shooting
		if timer == 1900
		{
			with instance_create_layer(x + 150 + 50,y,"Instances",oShoot)
			{
				hp = 60;
				spawn = true;
			}
		}
		
		if timer == 1930
		{
			with instance_create_layer(x - 150,y,"Instances",oShoot)
			{
				hp = 60;
				spawn = true;
			}
		}

		if timer > 2100 
		{
			with all
			{
				if global.alive == 0
				{
					room_goto(rOffice1);
					global.lvl = 2;
			
			
				}
			}
		}
	}
	break;
	#endregion
}
