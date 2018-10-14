for (var i = 0; i < ds_list_size(global.blocks_ava);i++) {
    instance_create_layer(575,i*100+50,layer,ds_list_find_value(global.blocks_ava,i))
}