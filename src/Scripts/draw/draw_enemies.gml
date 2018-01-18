for (n = 0; n < ds_list_size(enemy_pool); n += 1) {
    enemy = ds_list_find_value(enemy_pool, n)
    show_debug_message(string(enemy));
    switch (type_pool[enemy]) {
        case TYPE_ZOMBIE: 
            show_debug_message(string(rid(enemy).instance_id)); 
            draw_sprite_ext(zombie, get_anim_frame(enemy), rid(enemy).x, rid(enemy).y, 0.5, 0.5, 0, -1, 1) 
    }
}

show_debug_message("exhausted")
