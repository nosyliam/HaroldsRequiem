player = instance_find(harold, 0)
if player = noone {
    exit;
}

// UP
if keyboard_check_pressed(vk_up) {
    play_anim(oid(player.instance_id), TYPE_PLAYER, ANIM_WALK, 1);
}
if keyboard_check(vk_up) {
    player.y -= 1
    exit;
}
if keyboard_check_released(vk_up) {
    play_anim(oid(player.instance_id), TYPE_PLAYER, ANIM_NEUTRAL, 1);
}

// DOWN
if keyboard_check_pressed(vk_down) {
    play_anim(oid(player.instance_id), TYPE_PLAYER, ANIM_WALK, 2);
}
if keyboard_check(vk_down) {
    player.y += 1
    exit;
}
if keyboard_check_released(vk_down) {
    play_anim(oid(player.instance_id), TYPE_PLAYER, ANIM_NEUTRAL, 2);
}

// LEFT
if keyboard_check_pressed(vk_left) {
    play_anim(oid(player.instance_id), TYPE_PLAYER, ANIM_WALK, 3);
}
if keyboard_check(vk_left) {
    player.x -= 1
    exit;
}
if keyboard_check_released(vk_left) {
    play_anim(oid(player.instance_id), TYPE_PLAYER, ANIM_NEUTRAL, 3);
}

// RIGHT
if keyboard_check_pressed(vk_right) {
    play_anim(oid(player.instance_id), TYPE_PLAYER, ANIM_WALK, 4);
}
if keyboard_check(vk_right) {
    player.x += 1
    exit;
}
if keyboard_check_released(vk_right) {
    play_anim(oid(player.instance_id), TYPE_PLAYER, ANIM_NEUTRAL, 4);
}
