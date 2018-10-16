show_message("Hello")
colision = false
global.blocks_ava = ds_list_create()
global.selected = noone
slots = 0
slots = 0
created = true
//Lv 1 Spawn Blocks
if room = rlv1
{
	slots = 1
	ds_list_add(global.blocks_ava,objblockmoveright);
	ds_list_add(global.blocks_ava,objblockmoveright);
	scrspawnavablocks();
}