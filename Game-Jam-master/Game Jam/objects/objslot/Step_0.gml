contact = place_meeting(x,y,objselectmoveleft) or place_meeting(x,y,objselectmoveright)
if contact and mouse_check_button_released(mb_left)
{
	switch (global.selected) {
    case "Move_Right":
        sprite_index = sprblockmoveright
        break;
	case "Move_Left":
		sprite_index = sprblockmoveright
		break;
    default:
        break;
	}	
}