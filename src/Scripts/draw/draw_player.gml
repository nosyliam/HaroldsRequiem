if (game.health <= 0) player.about_to_die = true
if (player.about_to_die and !player.dying and total_ticks mod 60 == 0) {
    player.dying = true
    death_frame = 0
    play_anim(oid(player.id), TYPE_PLAYER, ANIM_DEATH, player.current_dir);
    lock_pool[oid(player.id)] = 1
}

draw_sprite_ext(Harold, get_anim_frame(oid(player.id)), player.x, player.y, 1.2, 1.2, 0, -1, 1)
