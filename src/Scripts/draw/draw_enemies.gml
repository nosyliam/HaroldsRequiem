for (n = 0; n < ds_list_size(enemy_pool); n += 1) {
    enemy = ds_list_find_value(enemy_pool, n)
    switch (type_pool[enemy]) {
        case TYPE_ZOMBIE: draw_sprite_ext(zombies, get_anim_frame(enemy), rid(enemy).x, rid(enemy).y, 0.5, 0.5, 0, -1, 1) break;
    }
}
