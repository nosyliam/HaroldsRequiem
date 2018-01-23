var tile;
for (w = 0; w < room_width; w += 16) {
    for (h = 0; h < room_height; h += 16) {  
        tile = tile_layer_find(20, w, h)
        if (tile) {
            switch (tile_get_left(tile) / 16) {
                case 0: create_enemy(w, h, TYPE_ZOMBIE, tile_get_top(tile) / 16) break;
            }
        }
    }
}

