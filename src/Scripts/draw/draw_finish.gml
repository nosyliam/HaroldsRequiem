var opacity;
if (game.win_frame < 50) {
    game.win_frame += 1
    opacity = game.win_frame * 0.02
} else if (game.win_frame == 50) {
    opacity = 1
}

draw_set_alpha(opacity)
draw_rectangle(0, 0, room_width, room_height, false)

old_color = draw_get_color()
draw_set_color(c_olive)
draw_set_valign(fa_center)
draw_set_halign(fa_center)
draw_set_font(win)
draw_text_ext(view_xview[0] + 192, view_yview[0] + 150, "Harold's quest is complete, for now. Power has been restored to the kingdom through the animated gem. It's only a matter of time before it comes again, though.", -1, 350)
draw_set_color(old_color)
draw_set_alpha(1)

