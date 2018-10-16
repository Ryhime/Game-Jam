//All Movement
if global.go = true
{
	if findvalue = false
	{
		value = ds_list_find_value(global.directions,slot)
		findvalue = true
	}
	if findvalue and slot <= global.ava_slots and going = false
	{
		if value = "Move_Right"
		{
			hspeed = 5
			alarm[0] = 50
			going = true
		}
		if value = "Move_Left"
		{
			hspeed = -5	
			alarm[0] = 50
			going = true
		}
	}
}



















//Sprite Index
if hspeed != 0 
{
	sprite_index = sprplayerwalk
	if hspeed < 0 
	{
		image_xscale = -1	
	}
	else image_xscale = 1
}
else if vspeed > 0
{
	sprite_index = sprplayerwalkdown	
}
else if vspeed < 0
{
	sprite_index = sprplayerwalkup	
}
else sprite_index = sprplayeridle