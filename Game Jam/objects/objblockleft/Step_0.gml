if place_meeting(mouse_x,mouse_y,objblockright) and mouse_check_button_pressed(mb_left) and !global.go 
{
	global.selected = "Move_Right"	
	audio_play_sound(sndclick,100,false)
}
if place_meeting(mouse_x,mouse_y,objblockup) and mouse_check_button_pressed(mb_left) and !global.go 
{
	global.selected = "Move_Up"	
	audio_play_sound(sndclick,100,false)
}
if place_meeting(mouse_x,mouse_y,objblockdown) and mouse_check_button_pressed(mb_left) and !global.go 
{
	global.selected = "Move_Down"	
	audio_play_sound(sndclick,100,false)
}
if place_meeting(mouse_x,mouse_y,objblockdebug) and mouse_check_button_pressed(mb_left) and !global.go 
{
	global.selected = "Debug"	
	audio_play_sound(sndclick,100,false)
}

