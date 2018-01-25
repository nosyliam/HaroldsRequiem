draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_font(itemf)
draw_set_color(make_color_rgb(10, 10, 10))

offset = 0
draw_background_part(guimain, 0, 176, 16, 16, mouse_x + 8, mouse_y - 5)
for (n = 0; n < floor(string_length(argument0) / 3); n += 1) {
    draw_background_part(guimain, 32, 176, 16, 16, mouse_x + 24 + (n * 16), mouse_y - 5)
    offset += 16
}
draw_background_part(guimain, 64, 176, 16, 16, mouse_x + 24 + offset, mouse_y - 5)
draw_text(mouse_x + 26 + (offset / 2), mouse_y + 3, argument0)
