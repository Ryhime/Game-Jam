global.blocks_ava = ds_list_create()
global.selected = noone
created = false
slots = 0
//Lv 1 Spawn Blocks
if room = rlv1
{
	slots = 1
	scrcreateslots(slots)
	ds_list_add(global.blocks_ava,objblockmoveright)
	ds_list_add(global.blocks_ava,objblockmoveright)
	scrspawnavablocks()
}