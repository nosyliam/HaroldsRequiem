// Since the only play-once anim is attack, we can assume that
// every callback should be an attack.
switch (type_pool[argument0]) {
    case TYPE_PLAYER:
        show_debug_message("Callback");
        with (rid(argument0)) { 
            if keyboard_check(vk_up) play_anim(oid(id), TYPE_PLAYER, ANIM_WALK, current_dir);
            if keyboard_check(vk_down) play_anim(oid(id), TYPE_PLAYER, ANIM_WALK, current_dir);
            if keyboard_check(vk_left) play_anim(oid(id), TYPE_PLAYER, ANIM_WALK, current_dir);
            if keyboard_check(vk_right) play_anim(oid(id), TYPE_PLAYER, ANIM_WALK, current_dir);
        }
        break;
}
