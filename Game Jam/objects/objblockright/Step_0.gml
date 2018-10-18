//Cursor
if mouse_check_button(mb_left)
{
	cursor_sprite = sprcursorclick
}
else cursor_sprite = sprcursor
if place_meeting(mouse_x,mouse_y,objblockleft) and mouse_check_button_pressed(mb_left) and !global.go
{
	global.selected = "Move_Left"
	audio_play_sound(sndclick,100,false)
}
//Create Selected Blocks
if global.selected = "Move_Right" and global.created = false
{
	instance_create_layer(mouse_x,mouse_y,"Selects",objselectright)
	global.created = true
}
if global.selected = "Move_Left" and global.created = false
{
	instance_create_layer(mouse_x,mouse_y,"Selects",objselectleft)
	global.created = true
}
if global.selected = "Move_Down" and global.created = false
{
	instance_create_layer(mouse_x,mouse_y,"Selects",objselectdown)
	global.created = true	
}
if global.selected = "Clone" and global.created = false
{
	instance_create_layer(mouse_x,mouse_y,"Selects",objselectclone)
	global.created = true
}
if global.selected = "Move_Up" and global.created = false
{
	instance_create_layer(mouse_x,mouse_y,"Selects",objselectup)
	global.created = true	
}
if global.selected = "Debug" and global.created = false
{
	instance_create_layer(mouse_x,mouse_y,"Selects",objselectdebug)
	global.created = true
}
//Clear Selected
if mouse_check_button_released(mb_left)
{
	global.selected = ""
	global.created = false
}
//Check if go is clicked
if place_meeting(mouse_x,mouse_y,objgo) and mouse_check_button_pressed(mb_left)
{
	global.go = true
	audio_play_sound(sndclick,100,false)
}