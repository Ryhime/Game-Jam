if place_meeting(mouse_x,mouse_y,objblockclone) and mouse_check_button_pressed(mb_left)
{
	global.selected = "Clone"
	audio_play_sound(sndclick,100,false)
}