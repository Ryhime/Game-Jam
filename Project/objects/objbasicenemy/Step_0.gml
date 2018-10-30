if place_meeting(x,y,objarrow)
{
	instance_destroy()
}
if place_meeting(x-1,y,objsolid)
{
	hspeed = 5	
}
else if place_meeting(x+1,y,objsolid)
{
	hspeed = -5	
}
if place_meeting(x,y+1,objsolid)
{
	gravity = 0	
}
else gravity = 1
//Collision
if hspeed != 0
if !place_free(x + hspeed, y)
{
 if hspeed > 0 move_contact_solid(0,hspeed)
 if hspeed < 0 move_contact_solid(180,-hspeed)
 hspeed = 0
}

///////
if vspeed != 0
if !place_free(x + hspeed, y + vspeed)
{
 if vspeed > 0 move_contact_solid(270,vspeed)
 if vspeed < 0 move_contact_solid(90,-vspeed)
 vspeed = 0
}