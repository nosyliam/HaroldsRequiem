global.game.animation_pool[oid(id)] = 0
global.game.animation_state_pool[oid(id)] = 0
global.game.animation_save_pool[oid(id)] = -1
global.game.type_pool[oid(id)] = argument0
global.game.lock_pool[oid(id)] = -1

if (argument0 == TYPE_PLAYER) {
    current_anim = 0
    currnet_dir = 0
} else {
    ds_list_add(global.game.enemy_pool, oid(id))
}
