for (n = 0; n < ds_list_size(enemy_pool); n += 1) {
    enemy = ds_list_find_value(enemy_pool, n)
    tick_path(enemy)
    tick_ai(enemy)
    if (rid(enemy).avhealth <= 0 and lock_pool[enemy] == -1) {
        play_anim_once(enemy, rid(enemy).type, ANIM_DEATH, rid(enemy).current_dir);
        with(rid(enemy)) avhealth = $FFFF
    }

}

