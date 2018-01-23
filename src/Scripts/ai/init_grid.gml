mult = 16
if (game.current_room != castle) mult = 24
game.grid = mp_grid_create(0, 0, room_width / mult, room_height / mult, mult, mult)

for (w = 0; w < room_width; w += mult) {
    for (h = 0; h < room_height; h += mult) {  
        tile = tile_layer_find(1000005, w, h)
        if (tile) {
            mp_grid_add_cell(game.grid, w / mult, h / mult)
        }
    }
}

