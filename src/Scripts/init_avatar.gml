global.game.animation_pool[oid(instance_id)] = 0
global.game.animation_state_pool[oid(instance_id)] = 0
global.game.type_pool[oid(instance_id)] = argument0

if (argument0 == TYPE_PLAYER) {
    current_anim = 0
}
