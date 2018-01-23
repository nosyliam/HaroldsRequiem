coll = collision_rectangle(argument1 + 2 + lengthdir_x(1, argument0), argument2 + 4 + lengthdir_y(1, argument0),
                           argument1 - 2 + lengthdir_x(1, argument0), argument2 - 10 + lengthdir_y(1, argument0),
                           base_enemy, false, true)

if (coll) { if (argument2 + 4 + lengthdir_y(1, argument0) > coll.y and argument2 - 10 + lengthdir_y(1, argument0) < coll.y) { return true; }}

tile = tile_layer_find(1000005, argument1 + 10 + lengthdir_x(1, argument0), argument2 + 2 + lengthdir_y(1, argument0))
if (tile) return true;

tile = tile_layer_find(1000005, argument1 - 10 + lengthdir_x(1, argument0), argument2 - 14 + lengthdir_y(1, argument0))
if (tile) return true;

return false;
