if (global.game.within_transition) {
    draw_transition()
}

if (!global.game.want_show_hud) exit
for (n = 0; n < ds_list_size(global.game.inventory_pool); n += 1) {
    item = ds_list_find_value(global.game.inventory_pool, n)
    draw_sprite_ext(items, global.game.item_img_list[item], 230 + ((n mod 3) * 32), 294 + (floor(n / 3) * 32), 0.65, 0.65, 0, -1, 1)
}

if (global.game.playing_text == true) {
    draw_set_halign(fa_center)
    draw_set_font(dialog)
    draw_set_color(make_color_rgb(192, 160, 64))
    draw_text_outline(128, 290, global.game.text_name)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    draw_set_font(dialog_speech)
    draw_text_ext(64, 308 - global.game.text_offset, global.game.current_text, -1, 132)
    exit;
}
h_col1 = make_color_rgb(0, 204, 0)
h_col2 = make_color_rgb(0, 153, 0)
draw_rectangle_color(88, 309, 88 + ((96/global.game.maxhealth) * (global.game.health)), 313, h_col1, h_col1, h_col2, h_col2, false)
s_col1 = make_color_rgb(0, 0, 214)
s_col2 = make_color_rgb(0, 0, 163)
draw_rectangle_color(88, 325, 88 + ((96/global.game.maxstamina) * (global.game.stamina)), 329, s_col1, s_col1, s_col2, s_col2, false)


