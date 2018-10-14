//Mouse Let Go
if mouse_check_button_released(mb_left)
{
	global.selected = noone	
	created =false
}
if global.selected != noone and created = false
{
	instance_create_layer(mouse_x,mouse_y,"Blocks",global.selected)
	created = true
}