global.selected = ""
global.created = false
global.directions = ds_list_create()
ds_list_add(global.directions,"","","","","","","","","","","")
global.go = false
global.ava_slots = 0
//Set Available Slots
if room = rlv1
{
	global.ava_slots = 4	
}
//Audio
audio_stop_all()
if room = rlv1
{
	audio_play_sound(sndlv1,0,true)	
}