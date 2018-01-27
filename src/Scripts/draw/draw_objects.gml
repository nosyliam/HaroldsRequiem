draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_font(itemf)
draw_set_color(make_color_rgb(10, 10, 10))

mouse_in_hud = mouse_collides(mouse_x, mouse_y, 32, 272, 320, 352);
selected_verify = 0;
for (n = 0; n < ds_list_size(items_pool); n += 1) {
    item = ds_list_find_value(items_pool, n)
    if (get_packed_32(item) != room) continue;
    iimg = get_packed_8(item);
    ix = room_width - get_packed_16(item);
    iy = get_packed_24(item);
    draw_sprite_ext(items, item_img_list[iimg], ix, iy, 1, 1, 0, -1, 1)
    
    if (mouse_in_hud) continue;
    if (map_open) continue;
    if mouse_collides(mouse_x, mouse_y, ix, iy, ix + 16, iy + 16) {
        item_selected = combine_numbers(n, iimg); selected_verify = combine_numbers(n, iimg);
        if mouse_collides(mouse_x, mouse_y, global.player.x - 60, global.player.y - 28, global.player.x + 12, global.player.y + 4) {
            continue;
        }
        iname = item_name_list[iimg]
        offset = 0
        draw_background_part(guimain, 0, 176, 16, 16, mouse_x + 8, mouse_y - 5)
        draw_background_part(guimain, 32, 176, 16, 16, mouse_x + 24, mouse_y - 5)
        draw_background_part(guimain, 32, 176, 16, 16, mouse_x + 40, mouse_y - 5)
        if string_length(iname) > 8 {
            draw_background_part(guimain, 32, 176, 16, 16, mouse_x + 56, mouse_y - 5)
            offset = 16   
        }
        draw_background_part(guimain, 64, 176, 16, 16, mouse_x + 56 + offset, mouse_y - 5)
        draw_text_ext(mouse_x + 33 + offset, mouse_y + 3, item_name_list[iimg], -1, 132)
    }
    if (item_selected != selected_verify) {
        item_selected = -1;
    }
}
