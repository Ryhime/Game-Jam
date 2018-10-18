//Colision With Button
if place_meeting(mouse_x,mouse_y,objgo)
{
	buttoncolision = true	
}
else buttoncolision = false
//Set Slots
if room = rlv2
{
	global.ava_slots = 6
}
//Check For Finish
if place_meeting(x,y,objfinish) and global.key = true
{
	room_goto_next()
}	
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
			alarm[0] = alarm1
			going = true
		}
		else if value = "Move_Left"
		{
			hspeed = -5	
			alarm[0] = alarm1
			going = true
		}
		else if value = "Move_Down"
		{
			vspeed = 5
			alarm[0] = alarm1
			going = true
		}
		else if value = "Move_Up"
		{
			vspeed = -7
			alarm[0] = alarm1
			going = true
		}
		else if value = "Debug"
		{
			debugging = true
			going = true
			instance_create_layer(objplayer.x,objplayer.y-50,layer,objdebug)
			alarm[0] = alarm1
		}
		else if value = "Clone"
		{
			cloning = true
			going = true
			alarm[0] = alarm1
		}
		else
		{
			going = true
			alarm[0] = alarm1
		}
	}
}
//Death By Bug
if place_meeting(x,y,objbug)
{
	room_restart()	
}
//Collision
if hspeed != 0
if !place_free(x + hspeed, y)
{
 if hspeed > 0 move_contact_solid(0,hspeed)
 if hspeed < 0 move_contact_solid(180,-hspeed)
 hspeed = 0
}

///////
if vspeed != 0
if !place_free(x + hspeed, y + vspeed)
{
 if vspeed > 0 move_contact_solid(270,vspeed)
 if vspeed < 0 move_contact_solid(90,-vspeed)
 vspeed = 0
}
//Cursor on Blocks
if place_meeting(mouse_x,mouse_y,objblockdebug) or place_meeting(mouse_x,mouse_y,objblockdown) or place_meeting(mouse_x,mouse_y,objblockup) or place_meeting(mouse_x,mouse_y,objblockright) or place_meeting(mouse_x,mouse_y,objblockleft) or place_meeting(mouse_x,mouse_y,objgo)
{
	cursor_sprite = sprcursorclick	
}


//Key
if place_meeting(x,y,objkey)
{
	global.key = true	
}












//Sprite Index
if cloning
{
	sprite_index = sprclone	
	image_speed = .5
}
else if hspeed != 0 
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