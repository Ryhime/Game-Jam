if mouse_check_button_pressed(mb_left) and point_in_rectangle(mouse_x,mouse_y,205,355,430,450)
{
	audio_play_sound(sndclick,100,false)
	alarm[0] = 8
}
if mouse_check_button(mb_left)
{
	cursor_sprite = sprcursorclick
}
else cursor_sprite = sprcursor