var opacity;
offset = global.game.transition_wait
if (global.game.transition_frame < 50) {
    global.game.transition_frame += 1
    opacity = global.game.transition_frame * 0.02
} else if (global.game.transition_frame == 50) {
    load_room();
    opacity = 1
    global.game.transition_frame += 1
} else if (global.game.transition_frame < 50 + offset) {
    opacity = 1
    global.game.transition_frame += 1
} else if (global.game.transition_frame < 100 + offset) {
    global.game.transition_frame += 1
    
    height = room_heights(global.game.transition_dest)
    player = instance_find(harold, 0)
    player.x = 152
    player.y = height - 32
    
    opacity = 1 - (global.game.transition_frame - (50 + offset)) * 0.02
} else if (global.game.transition_frame == 100 + offset) {
    global.game.within_transition = false
    global.game.transition_frame = 0
    exit;
}

draw_set_alpha(opacity)
draw_rectangle(0, 0, room_width, room_height, false)
draw_set_alpha(1)
