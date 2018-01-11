player = instance_find(harold, 0)
if (player == noone) {
    exit;
}

draw_sprite_ext(Harold, get_anim_frame(oid(player.instance_id)), player.x, player.y, 1.2, 1.2, 0, -1, 1)
