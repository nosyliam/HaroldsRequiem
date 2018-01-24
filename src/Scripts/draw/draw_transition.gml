var opacity;
offset = game.transition_wait
if (game.transition_frame < 50) {
    game.transition_frame += 1
    opacity = game.transition_frame * 0.02
} else if (game.transition_frame == 50) {
    load_room();
    opacity = 1
    game.transition_frame += 1
} else if (game.transition_frame < 50 + offset) {
    opacity = 1
    game.transition_frame += 1
} else if (game.transition_frame < 100 + offset) {
    game.transition_frame += 1
    
    height = room_heights(game.transition_dest)
    player = instance_find(harold, 0)
    player.x = spawn_x(game.transition_dest)
    player.y = height - 144
    lock_pool[oid(player.id)] = -1
    player.about_to_die = false
    player.dying = false
    player.health = 100
    play_anim(oid(player.id), TYPE_PLAYER, ANIM_NEUTRAL, 1);
    
    opacity = 1 - (game.transition_frame - (50 + offset)) * 0.02
} else if (game.transition_frame == 100 + offset) {
    game.within_transition = false
    game.transition_frame = 0
    exit;
}

draw_set_alpha(opacity)
draw_rectangle(0, 0, room_width, room_height, false)
draw_set_alpha(1)
