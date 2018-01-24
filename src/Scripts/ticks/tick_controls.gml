player = instance_find(harold, 0)
if (player == noone or playing_text == true) exit
if (lock_pool[oid(player.id)] != -1) exit

// OPEN MAP
if keyboard_check_pressed(ord('R')) {
    if (!map_open) {
        lock_pool[oid(player.id)] = 1
        tile_layer_show(60)
        map_open = true
    } else {
        lock_pool[oid(player.id)] = -1
        tile_layer_hide(60)
        map_open = false
    }
}

// SWING
if keyboard_check_pressed(ord('Q')) {
    play_anim(oid(player.id), TYPE_PLAYER, ANIM_NEUTRAL, player.current_dir);
    play_anim_once(oid(player.id), TYPE_PLAYER, ANIM_SWING, player.current_dir);
    exit;
}

// UP
if keyboard_check_pressed(vk_up) {
    if check_collision(90, player.x, player.y) {
        exit;
    }
    play_anim(oid(player.id), TYPE_PLAYER, ANIM_WALK, 1);
    player.current_anim = 1
    player.current_dir = 1
}
if keyboard_check(vk_up) {
    if check_collision(90, player.x, player.y) {
        if (player.current_anim != -1) {
            play_anim(oid(player.id), TYPE_PLAYER, ANIM_NEUTRAL, 1);
        }
        player.current_anim = -1
        player.current_dir = 1
        exit;
    }
    if (player.current_anim != 1) {
        play_anim(oid(player.id), TYPE_PLAYER, ANIM_WALK, 1);
        player.current_anim = 1
        player.current_dir = 1
    }
    player.y -= 1
    shift_hud(0, -1)
    exit;
}
if keyboard_check_released(vk_up) {
    play_anim(oid(player.id), TYPE_PLAYER, ANIM_NEUTRAL, 1);
}

// DOWN
if keyboard_check_pressed(vk_down) {
    if check_collision(270, player.x, player.y) {
        exit;
    }
    play_anim(oid(player.id), TYPE_PLAYER, ANIM_WALK, 2);
    player.current_anim = 2
    player.current_dir = 2
}
if keyboard_check(vk_down) {
    if check_collision(270, player.x, player.y) {
        if (player.current_anim != -1) {
            play_anim(oid(player.id), TYPE_PLAYER, ANIM_NEUTRAL, 2);
        }
        player.current_anim =  -1
        player.current_dir = 2
        exit;
    }
    if (player.current_anim != 2) {
        play_anim(oid(player.id), TYPE_PLAYER, ANIM_WALK, 2);
        player.current_anim = 2
        player.current_dir = 2
    }
    player.y += 1
    shift_hud(0, 1)
    exit;
}
if keyboard_check_released(vk_down) {
    play_anim(oid(player.id), TYPE_PLAYER, ANIM_NEUTRAL, 2);
}

// LEFT
if keyboard_check_pressed(vk_left) {
    if check_collision(180, player.x, player.y, 1) {
        exit;
    }
    play_anim(oid(player.id), TYPE_PLAYER, ANIM_WALK, 3);
    player.current_anim = 3
    player.current_dir = 3
}
if keyboard_check(vk_left) {
    if check_collision(180, player.x, player.y, 1) {
        if (player.current_anim != -1) {
            play_anim(oid(player.id), TYPE_PLAYER, ANIM_NEUTRAL, 3);
        }
        player.current_anim =  -1
        player.current_dir = 3
        exit;
    }
    if (player.current_anim != 3) {
        play_anim(oid(player.id), TYPE_PLAYER, ANIM_WALK, 3);
        player.current_anim = 3
        player.current_dir = 3
    }
    player.x -= 1
    exit;
}
if keyboard_check_released(vk_left) {
    play_anim(oid(player.id), TYPE_PLAYER, ANIM_NEUTRAL, 3);
}

// RIGHT
if keyboard_check_pressed(vk_right) {
    if check_collision(0, player.x, player.y, 1) {
        exit;
    }
    play_anim(oid(player.id), TYPE_PLAYER, ANIM_WALK, 4);
    player.current_anim = 4
    player.current_dir = 4
}
if keyboard_check(vk_right) {
    if check_collision(0, player.x, player.y, 1) {
        if (player.current_anim != -1) {
            play_anim(oid(player.id), TYPE_PLAYER, ANIM_NEUTRAL, 4);
        }
        player.current_anim =  -1
        player.current_dir = 4
        exit;
    }
    if (player.current_anim != 4) {
        play_anim(oid(player.id), TYPE_PLAYER, ANIM_WALK, 4);
        player.current_anim = 4
        player.current_dir = 4
    }
    player.x += 1
    exit;
}
if keyboard_check_released(vk_right) {
    play_anim(oid(player.id), TYPE_PLAYER, ANIM_NEUTRAL, 4);
}
