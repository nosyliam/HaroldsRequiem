switch (type_pool[argument0]) {
    case TYPE_ZOMBIE:
        if (argument1 == ANIM_DEATH) {
            with (rid(argument0)) {
                ds_list_add(global.game.garbage_pool, id)
            }
            return 1
        } else if (argument1 == ANIM_SWING) {
            with (rid(argument0)) {
                coll = collision_line(x, y, x + lengthdir_x(48, rot(current_dir)), y + lengthdir_y(48, rot(current_dir)), harold, false, true)
                if (coll) {
                    game.health -= enemy_damage(type)
                }
            }   
        }
        break;
    case TYPE_PLAYER:
        with (rid(argument0)) { 
            coll = collision_line(x, y, x + lengthdir_x(32, rot(current_dir)), y + lengthdir_y(32, rot(current_dir)), base_enemy, false, true)
            if (coll) {
                with (coll) avhealth -= rid(argument0).weapon_damage
            }
            if keyboard_check(vk_up) play_anim(oid(id), TYPE_PLAYER, ANIM_WALK, current_dir);
            if keyboard_check(vk_down) play_anim(oid(id), TYPE_PLAYER, ANIM_WALK, current_dir);
            if keyboard_check(vk_left) play_anim(oid(id), TYPE_PLAYER, ANIM_WALK, current_dir);
            if keyboard_check(vk_right) play_anim(oid(id), TYPE_PLAYER, ANIM_WALK, current_dir);
        }
        break;
}
return 0
