with (rid(argument0)) {
    if (!on_path) {
        position = path_nearest(get_path(path), x, y)
        path_start(get_path(path), 3, 0, true)
        on_path = true
        path_position = position
    }

    if (current_dir != rmod(direction)) {
        play_anim(oid(id), type, ANIM_WALK, dir(rmod(direction)));
        current_dir = rmod(direction)
    }
}
