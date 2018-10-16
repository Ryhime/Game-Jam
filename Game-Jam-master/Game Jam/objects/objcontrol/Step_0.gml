//Mouse Let Go
if mouse_check_button_released(mb_left) && colision == false 
{	
	global.selected = noone;
	created = false;										
}
else if mouse_check_button_released(mb_left) && colision == true and global.selected != noone
{
	slot += 1; //add an extra slot
	global.selected = noone
	create = false
}
if global.selected != noone and !create
{
	switch (global.selected) {
	    case "Move_Right":
			selected = objselectmoveright
	        break;
		case "Move_Left":
			selected = objselectmoveleft
			break
	    default:
	        // code here
	        break;
	}
	instance_create_layer(mouse_x,mouse_y,"Blocks",selected)
	create = true
}
if(room == rlv1)
{
	scrcreateslots(slot);
}