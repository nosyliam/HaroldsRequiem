with (rid(argument0)) {
    if (nearby_player) {
        mag = point_distance(last_posx, last_posy, player.x, player.y)
        cur_mag = point_distance(x, y, player.x, player.y - 12)
        if (cur_mag <= 20) {
            want_path = false
            tracking_player = false
            dir_p = point_direction(x, y, player.x, player.y - 12) 
            if (current_dir != dir(rmod(dir_p))) 
                play_anim(oid(id), type, ANIM_NEUTRAL, dir(rmod(dir_p))); 
                current_dir = dir(rmod(dir_p))
            
            if (path_index) path_end()
            if (game.total_ticks mod 80 == 0 and game.lock_pool[oid(id)] == -1)
                play_anim_once(oid(id), type, ANIM_SWING, current_dir);
            
            exit
        }
        if !(last_mag < mag + 6 and last_mag > mag - 6) {
            path_end()
            if (temp_path) path_delete(temp_path)
            temp_path = path_add()
            mp_grid_path(game.grid, temp_path, x, y, player.x + random(32) - 16, player.y - 12, false)
            last_mag = mag;
            path_set_precision(temp_path, 1)
            path_start(temp_path, 1, 0, false)
            want_path = true
            tracking_player = true
        }
    } else {
        nearby_player = (point_distance(x, y, player.x, player.y) < 90)
        if (nearby_player) path_end();
    }
}
