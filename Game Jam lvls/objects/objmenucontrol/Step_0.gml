if mouse_check_button_pressed(mb_left) and point_in_rectangle(mouse_x,mouse_y,255,280,380,350)
{
	audio_play_sound(sndclick,100,false)
	alarm[0] = 8
}
