with (rid(argument0)) {
    if (nearby_player) {
        mag = point_distance(last_posx, last_posy, player.x, player.y)
        if (mag <= 32) exit 
        if !(last_mag < mag + 5 and last_mag > mag - 5) {
            path_end();
            if (temp_path) path_delete(temp_path)
            temp_path = path_add();
            mp_grid_path(game.grid, temp_path, x, y, player.x, player.y + lengthdir_y(12, direction), false)
            last_mag = mag;
            path_set_precision(temp_path, 1)
            path_start(temp_path, 1, 0, false)
            show_debug_message(string(game.grid))
        }
    } else {
        nearby_player = (point_distance(x, y, player.x, player.y) < 150)
        if (nearby_player) path_end();
    }
}
