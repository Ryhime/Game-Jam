if value = "Clone" and place_free(x,y+100)
{
	instance_create_layer(x,y+100,layer,objclone)	
}
hspeed = 0
vspeed = 0
slot++
value= ""
findvalue = false
going = false
if slot = global.ava_slots
{
	alarm[1] = 30
}
debugging = false
cloning = false