game.grid = mp_grid_create(0, 0, room_width / 24, room_height / 24, 24, 24)

for (w = 0; w < room_width; w += 24) {
    for (h = 0; h < room_height; h += 24) {  
        tile = tile_layer_find(1000005, w, h)
        if (tile) {
            mp_grid_add_rectangle(game.grid, w + 6, h + 6, w + 12, h + 12)
        }
    }
}

