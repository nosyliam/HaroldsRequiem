global.game.animation_pool[oid(instance_id)] = 0
global.game.animation_state_pool[oid(instance_id)] = 0
global.game.animation_save_pool[oid(instance_id)] = -1
global.game.type_pool[oid(instance_id)] = argument0
global.game.lock_pool[oid(instance_id)] = -1

if (argument0 == TYPE_PLAYER) {
    current_anim = 0
} else {
    ds_list_add(global.game.enemy_pool, oid(instance_id))
}
