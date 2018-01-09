for (n = 0; n < ds_list_size(items_pool); n += 1) {
    item = ds_list_find_value(items_pool, n)
    if ((item & $FF000000) >> 24 != current_room) continue;
    iimg = item & $FF;
    ix = (item & $FF00) >> 8;
    iy = (item & $FF0000) >> 16;
    draw_sprite_ext(items, item_img_list[iimg], ix, iy, 0.5, 0.5, 0, -1, 1)
    if mouse_collides(mouse_x, mouse_y, ix, iy, ix + 16, iy + 16) {
        // TODO: Info
    }
}
