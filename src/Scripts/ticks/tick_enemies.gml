for (n = 0; n < ds_list_size(enemy_pool); n += 1) {
    enemy = ds_list_find_value(enemy_pool, n)
    if (rid(enemy).avhealth <= 0) {
        play_anim_once(enemy, TYPE_ZOMBIE, ANIM_DEATH, rid(enemy).current_dir);
        with(rid(enemy)) avhealth = $FFFF
    }
    tick_path(enemy)
}
