x = mouse_x
y = mouse_y
if place_meeting(x,y,objslot1) and mouse_check_button_released(mb_left)
{
	objslot1.sprite_index = sprblockright
	global.selected = ""
}
else if place_meeting(x,y,objslot2) and mouse_check_button_released(mb_left)
{
	objslot2.sprite_index = sprblockright
	global.selected = ""
}
else if place_meeting(x,y,objslot3) and mouse_check_button_released(mb_left)
{
	objslot3.sprite_index = sprblockright
	global.selected = ""
}
else if place_meeting(x,y,objslot4) and mouse_check_button_released(mb_left)
{
	objslot4.sprite_index = sprblockright
	global.selected = ""
}
else if place_meeting(x,y,objslot5) and mouse_check_button_released(mb_left)
{
	objslot5.sprite_index = sprblockright
	global.selected = ""
}
else if place_meeting(x,y,objslot6) and mouse_check_button_released(mb_left)
{
	objslot6.sprite_index = sprblockright
	global.selected = ""
}
else if place_meeting(x,y,objslot7) and mouse_check_button_released(mb_left)
{
	objslot7.sprite_index = sprblockright
	global.selected = ""
}
else if place_meeting(x,y,objslot8) and mouse_check_button_released(mb_left)
{
	objslot8.sprite_index = sprblockright
	global.selected = ""
}
else if place_meeting(x,y,objslot9) and mouse_check_button_released(mb_left)
{
	objslot9.sprite_index = sprblockright
	global.selected = ""
}








if (global.selected = "") instance_destroy()