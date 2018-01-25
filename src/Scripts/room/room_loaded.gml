if (game.want_show_hud) load_hud()
load_map()
game.last_view_x = 0
game.last_view_y = room_height - 384
tile_layer_shift(100, 0, room_heights(room) - 384)
tile_layer_shift(99, 0, room_heights(room) - 384)
tile_layer_shift(60, 0, room_heights(room) - 384)

