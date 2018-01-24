if (last_view_x != view_xview[0] or last_view_y != view_yview[0]) {
    tile_layer_shift(100, view_xview[0] - last_view_x, view_yview[0] - last_view_y)
    tile_layer_shift(99, view_xview[0] - last_view_x, view_yview[0] - last_view_y)
    tile_layer_shift(60, view_xview[0] - last_view_x, view_yview[0] - last_view_y)
    last_view_x = view_xview[0]
    last_view_y = view_yview[0]
}
