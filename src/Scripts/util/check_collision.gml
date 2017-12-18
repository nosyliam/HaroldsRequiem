tile = tile_layer_find(1000005, argument1 + 10 + lengthdir_x(1, argument0), argument2 + 14 + lengthdir_y(1, argument0))
if tile {
    return true;
}
tile = tile_layer_find(1000005, argument1 - 10 + lengthdir_x(1, argument0), argument2 - 14 + lengthdir_y(1, argument0))
if tile {
    return true;
}

return false;
