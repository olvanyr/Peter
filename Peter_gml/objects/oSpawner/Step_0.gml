timer ++;


if !instance_exists(oShip)
{
	end_wave(rFiered,"fiered");
	global.new_music = sndNosound;
}
if instance_exists(oShip)
{
	global.new_music = _01_The_Misadventure_Begins;
}

switch global.lvl
{
	#region lvl 1
	case 1 : 
	{
		if wave_end end_wave(rOffice1, 2);
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
					other.wave_end = true;		
				}
			}
		}
	}
	break;
	#endregion
	#region lvl 2
	case 2 : 
	{
		if wave_end end_wave(rOffice1, 3);
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
		#region sin 2
		if timer > 800 && timer < 1120
		{
			if timer mod 30 == 0
			{
				with instance_create_layer(x - 200,y,"Instances",oSin)
				{
					ondulation_spd = -10;
					emplitude = 5;
					spd = 2;
					hp = 8;
					hp_max = hp;
				}
			}
		}
		
		//sin bleu
		if timer == 920
		{
			with instance_create_layer(x - 200,y,"Instances",oSin)
			{
				ondulation_spd = -10;
				emplitude = 5;
				spd = 2;
				hp = 25;
				hp_max = hp;
				sprite_index = sEnemy_arrow1;
				spawn = true;
			}
		}
		
		//sin 
		if timer > 800 && timer < 1120
		{
			if timer mod 30 == 0
			{
				with instance_create_layer(x + 200,y,"Instances",oSin)
				{
					ondulation_spd = -10;
					emplitude = 5;
					spd = 2;
					hp = 8;
					hp_max = hp;
				}
			}
		}
		
		//sin bleu
		if timer == 920
		{
			with instance_create_layer(x + 200,y,"Instances",oSin)
			{
				ondulation_spd = -10;
				emplitude = 5;
				spd = 2;
				hp = 25;
				hp_max = hp;
				sprite_index = sEnemy_arrow1;
				spawn = true;
			}
		}
		#endregion
		
		//Clock
		if timer == 1600
		{
			with instance_create_layer(x + 150 + 50,y,"Instances",oClock)
			{
				hp = 30;
				hp_max = hp;
			}
			with instance_create_layer(x - 150 - 50,y,"Instances",oClock)
			{
				hp = 30;
				hp_max = hp;
			}
			with instance_create_layer(x,y,"Instances",oClock)
			{
				hp = 30;
				hp_max = hp;
			}
		}
		
		//mail shooting
		if timer == 2300
		{
			with instance_create_layer(x + 150 + 50,y,"Instances",oShoot)
			{
				hp = 60;
				spawn = true;
			}
		}
		
		if timer == 2500
		{
			with instance_create_layer(x - 150,y,"Instances",oShoot)
			{
				hp = 60;
				spawn = true;
			}
		}
		
		if timer == 2700
		{
			clock = instance_create_layer(x,y,"Instances",oClock);
			with clock
			{
				hp = 35;
				hp_max = hp;
				spd = 3;
			}
		}
		
		if timer > 2800
		{
			if instance_exists(clock) clock.spd = 0;
		}

		if timer > 3200
		{
			with all
			{
				if global.alive == 0
				{
					other.wave_end = true;		
				}
			}
		}
	}
	break;
	#endregion
	#region lvl 3
	case 3 : 
	{
		if wave_end end_wave(rOffice1, 4);
		#region circle
		if timer == 250
		{
			with instance_create_layer(x - 150 + 50,y,"Instances",oCircle)
			{
				spd = 1;
				hp = 12;
				hp_max = hp;
			}
			with instance_create_layer(x + 50,y,"Instances",oCircle)
			{
				spd = 1;
				hp = 12;
				hp_max = hp;
				orbital_spd = -1;
			}
			with instance_create_layer(x + 150 + 50,y,"Instances",oCircle)
			{
				spd = 1;
				hp = 12;
				hp_max = hp;
			}
			with instance_create_layer(x -50,y,"Instances",oCircle)
			{
				spd = 1;
				hp = 12;
				hp_max = hp;
			}
			with instance_create_layer(x,y,"Instances",oCircle)
			{
				spd = 1;
				hp = 12;
				hp_max = hp;
				orbital_spd = -1;
			}
			with instance_create_layer(x - 100,y,"Instances",oCircle)
			{
				spd = 1;
				hp = 12;
				hp_max = hp;
			}
		}
		#endregion
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
		#region sin 2
		if timer > 920 && timer < 1120
		{
			if timer mod 30 == 0
			{
				with instance_create_layer(x - 200,y,"Instances",oSin)
				{
					ondulation_spd = -10;
					emplitude = 5;
					spd = 2;
					hp = 8;
					hp_max = hp;
				}
			}
		}
		
		//sin bleu
		if timer == 920
		{
			with instance_create_layer(x - 200,y,"Instances",oSin)
			{
				ondulation_spd = -10;
				emplitude = 5;
				spd = 2;
				hp = 25;
				hp_max = hp;
				sprite_index = sEnemy_arrow1;
				spawn = true;
			}
		}
		
		//sin 
		if timer > 920 && timer < 1120
		{
			if timer mod 30 == 0
			{
				with instance_create_layer(x + 200,y,"Instances",oSin)
				{
					ondulation_spd = -10;
					emplitude = 5;
					spd = 2;
					hp = 8;
					hp_max = hp;
				}
			}
		}
		
		//sin bleu
		if timer == 800
		{
			with instance_create_layer(x + 200,y,"Instances",oSin)
			{
				ondulation_spd = -10;
				emplitude = 5;
				spd = 2;
				hp = 25;
				hp_max = hp;
				sprite_index = sEnemy_arrow1;
				spawn = true;
			}
		}
		#endregion
		
		//Clock
		if timer == 1600 || timer == 2400
		{
			with instance_create_layer(x + 150 + 50,y,"Instances",oClock)
			{
				hp = 30;
				hp_max = hp;
			}
			with instance_create_layer(x - 150 - 50,y,"Instances",oClock)
			{
				hp = 30;
				hp_max = hp;
			}
			with instance_create_layer(x,y,"Instances",oClock)
			{
				hp = 30;
				hp_max = hp;
			}
		}
		//mail * 9
		if timer == 1700 ||timer == 1900 || timer == 2000
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
		
		//tases
		if timer == 2300
		{
			instance_create_layer(x,y,"Instances",oTaxes)
		}
		
		if timer > 3200
		{
			with all
			{
				if global.alive == 0
				{
					other.wave_end = true;		
				}
			}
		}
	}
	break;
	#endregion
	#region lvl 4
	case 4 : 
	{
		if wave_end end_wave(rEnd, "end");
		#region circle
		if timer == 250
		{
			with instance_create_layer(x - 150 + 50,y,"Instances",oCircle)
			{
				spd = 1;
				hp = 12;
				hp_max = hp;
			}
			with instance_create_layer(x + 50,y,"Instances",oCircle)
			{
				spd = 1;
				hp = 12;
				hp_max = hp;
				orbital_spd = -1;
			}
			with instance_create_layer(x + 150 + 50,y,"Instances",oCircle)
			{
				spd = 1;
				hp = 12;
				hp_max = hp;
			}
			with instance_create_layer(x -50,y,"Instances",oCircle)
			{
				spd = 1;
				hp = 12;
				hp_max = hp;
			}
			with instance_create_layer(x,y,"Instances",oCircle)
			{
				spd = 1;
				hp = 12;
				hp_max = hp;
				orbital_spd = -1;
			}
			with instance_create_layer(x - 100,y,"Instances",oCircle)
			{
				spd = 1;
				hp = 12;
				hp_max = hp;
			}
		}
		#endregion
		#region sin 1
		//Clock
		if timer == 50 || timer == 300
		{
			with instance_create_layer(x + 150 + 50,y,"Instances",oClock)
			{
				hp = 30;
				hp_max = hp;
			}
			with instance_create_layer(x - 150 - 50,y,"Instances",oClock)
			{
				hp = 30;
				hp_max = hp;
			}
			with instance_create_layer(x,y,"Instances",oClock)
			{
				hp = 30;
				hp_max = hp;
			}
		}
		
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
		//Clock
		if timer == 1000 || timer == 1200 || timer == 1400
		{
			with instance_create_layer(x + 150 + 50,y,"Instances",oClock)
			{
				hp = 30;
				hp_max = hp;
			}
			with instance_create_layer(x - 150 - 50,y,"Instances",oClock)
			{
				hp = 30;
				hp_max = hp;
			}
			with instance_create_layer(x,y,"Instances",oClock)
			{
				hp = 30;
				hp_max = hp;
			}
		}
		
		#region sin 2
		if timer > 920 && timer < 1120
		{
			if timer mod 30 == 0
			{
				with instance_create_layer(x - 200,y,"Instances",oSin)
				{
					ondulation_spd = -10;
					emplitude = 5;
					spd = 2;
					hp = 8;
					hp_max = hp;
				}
			}
		}
		
		//sin bleu
		if timer == 920
		{
			with instance_create_layer(x - 200,y,"Instances",oSin)
			{
				ondulation_spd = -10;
				emplitude = 5;
				spd = 2;
				hp = 25;
				hp_max = hp;
				sprite_index = sEnemy_arrow1;
				spawn = true;
			}
		}
		
		//sin 
		if timer > 920 && timer < 1120
		{
			if timer mod 30 == 0
			{
				with instance_create_layer(x + 200,y,"Instances",oSin)
				{
					ondulation_spd = -10;
					emplitude = 5;
					spd = 2;
					hp = 8;
					hp_max = hp;
				}
			}
		}
		
		//sin bleu
		if timer == 800
		{
			with instance_create_layer(x + 200,y,"Instances",oSin)
			{
				ondulation_spd = -10;
				emplitude = 5;
				spd = 2;
				hp = 25;
				hp_max = hp;
				sprite_index = sEnemy_arrow1;
				spawn = true;
			}
		}
		#endregion
		
		//Clock
		if timer == 1600 || timer == 2400
		{
			with instance_create_layer(x + 150 + 50,y,"Instances",oClock)
			{
				hp = 30;
				hp_max = hp;
			}
			with instance_create_layer(x - 150 - 50,y,"Instances",oClock)
			{
				hp = 30;
				hp_max = hp;
			}
			with instance_create_layer(x,y,"Instances",oClock)
			{
				hp = 30;
				hp_max = hp;
			}
		}
		//mail * 9
		if timer == 1700 ||timer == 1900 || timer == 2000
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
		
		//taxes
		if timer == 2300
		{
			with instance_create_layer(x,y,"Instances",oTaxes)
			{
				hp = 1000;
			}
		}
		
		if timer == 2600 ||timer == 2800 || timer == 2900
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
		
		if timer > 3200
		{
			with all
			{
				if global.alive == 0
				{
					other.wave_end = true;	
				}
			}
		}
	}
	break;
	#endregion
}


