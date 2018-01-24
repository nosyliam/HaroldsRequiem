var tile;
mult = 24

for (w = 0; w < room_width; w += mult) {
    for (h = 0; h < room_height; h += mult) {  
        tile = tile_layer_find(20, w, h)
        if (tile) {
            switch (tile_get_left(tile) / mult) {
                case 0: create_enemy(w, h, TYPE_ZOMBIE, tile_get_top(tile) / mult) break;
            }
        }
    }
}

