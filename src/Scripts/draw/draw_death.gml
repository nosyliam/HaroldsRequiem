var opacity;
if (game.death_frame < 50) {
    game.death_frame += 1
    opacity = game.death_frame * 0.02
} else if (game.death_frame == 50) {
    opacity = 1
}

draw_set_alpha(opacity)
draw_rectangle(0, 0, room_width, room_height, false)

old_color = draw_get_color()
draw_set_color(c_olive)
draw_set_valign(fa_center)
draw_set_halign(fa_center)
draw_set_font(death1)
draw_text(view_xview[0] + 192, view_yview[0] + 150, "YOU DIED")
draw_set_font(death2)
draw_text(view_xview[0] + 192, view_yview[0] + 192, "Press E To Continue")
draw_set_color(old_color)
draw_set_alpha(1)

if (keyboard_check(ord('E')) and !game.within_transition) room_transition(village, 50)

