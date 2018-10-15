//Mouse Let Go
if mouse_check_button_released(mb_left) && colision == false 
{	
	global.selected = noone;
	created = false;										
}
else if mouse_check_button_released(mb_left) && colision == true
{
	slots += 1; //add an extra slot
	global.selected = noone
	created = false
}
if global.selected != noone and created = false
{
	instance_create_layer(mouse_x,mouse_y,"Blocks",global.selected)
	created = true
}
if(room == rlv1)
{
	scrcreateslots(slots);
}