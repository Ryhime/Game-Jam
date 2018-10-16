if place_meeting(mouse_x,mouse_y,objblockleft) and mouse_check_button(mb_left) and !global.go
{
	global.selected = "Move_Left"	
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
if mouse_check_button_released(mb_left)
{
	global.selected = ""
	global.created = false
}
//Check if go is clicked
if place_meeting(mouse_x,mouse_y,objgo) and mouse_check_button_pressed(mb_left)
{
	global.go = true
}