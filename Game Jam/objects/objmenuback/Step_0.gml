if point_in_rectangle(mouse_x,mouse_y,205,355,430,450)
{
	if !played
	{
		image_speed = 1	
	}
	cursor_sprite = sprcursorclick
}
if !point_in_rectangle(mouse_x,mouse_y,205,355,430,450) and played
{
	played = false	
}