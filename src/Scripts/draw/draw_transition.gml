var opacity;
if (global.game.transition_frame < 50) {
    global.game.transition_frame += 1
    opacity = global.game.transition_frame * 0.02
} else if (global.game.transition_frame == 50) {
    load_room();
    opacity = 1
    global.game.transition_frame += 1
} else if (global.game.transition_frame < 100) {
    global.game.transition_frame += 1
    opacity = 1 - ((global.game.transition_frame - 50) * 0.02)
} else if (global.game.transition_frame == 100) {
    global.game.within_transition = false
    global.game.transition_frame = 0
    exit;
}

draw_set_alpha(opacity)
draw_rectangle(0, 0, room_width, room_height, false)
draw_set_alpha(1)
