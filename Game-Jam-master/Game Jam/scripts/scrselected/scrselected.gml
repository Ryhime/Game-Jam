
x = mouse_x
y = mouse_y

if global.selected = noone
{
	instance_destroy()	
}
if place_meeting(x,y,objslot)
{
	objcontrol.colision = true	
}
else objcontrol.colision = false