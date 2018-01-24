if (game.within_transition) {
    if (player.dying) draw_death()
    draw_transition() 
    exit
}

if (!game.want_show_hud) exit
for (n = 0; n < ds_list_size(game.inventory_pool); n += 1) {
    item = ds_list_find_value(game.inventory_pool, n)
    draw_sprite_ext(items, game.item_img_list[item], 230 + ((n mod 3) * 32), 294 + (floor(n / 3) * 32), 0.65, 0.65, 0, -1, 1)
}

if (game.playing_text == true) {
    draw_set_halign(fa_center)
    draw_set_font(dialog)
    draw_set_color(make_color_rgb(192, 160, 64))
    draw_text_outline(128, 290, game.text_name)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    draw_set_font(dialog_speech)
    draw_text_ext(64, 308 - game.text_offset, game.current_text, -1, 132)
    exit;
}

hud_y = view_yview[0] + 384
hud_x = view_xview[0] + 88
h_col1 = make_color_rgb(0, 204, 0)
h_col2 = make_color_rgb(0, 153, 0)
draw_rectangle_color(hud_x, hud_y - 75, hud_x + ((96/game.maxhealth) * (game.health)), hud_y - 71, h_col1, h_col1, h_col2, h_col2, false)
s_col1 = make_color_rgb(0, 0, 214)
s_col2 = make_color_rgb(0, 0, 163)
draw_rectangle_color(hud_x, hud_y - 59, hud_x + ((96/game.maxstamina) * (game.stamina)), hud_y - 55, s_col1, s_col1, s_col2, s_col2, false)

if (player.dying) draw_death()

