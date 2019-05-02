///@description create_menu_page
///@arg ["Name1",type1,entries1...]
///@arg ["Name2",type2,entries2...]

var arg, i = 0;
repeat(argument_count)
{
	arg[i] = argument[i];
	i++;
}

var ds_grid_id = ds_grid_create(6, argument_count); // 5 is the maximum variable every part of the menu actualy have
i = 0; 

repeat(argument_count)
{
	var array = arg[i];
	var array_len = array_length_1d(array);
	
	var j = 0; 
	repeat(array_len)
	{
		ds_grid_id[# j, i] = array[j];
		j++;
	}
	i++;
}


return ds_grid_id;