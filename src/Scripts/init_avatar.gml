global.game.animation_pool[oid(id)] = 0
global.game.animation_state_pool[oid(id)] = 0
global.game.animation_save_pool[oid(id)] = -1
global.game.type_pool[oid(id)] = argument0
global.game.lock_pool[oid(id)] = -1
current_anim = 2
current_dir = 2

if (argument0 == TYPE_PLAYER) {
    weapon_damage = 20
} else {
    path = 0
    on_path = false
    avhealth = enemy_health(argument0)
    ds_list_add(global.game.enemy_pool, oid(id))
    play_anim(oid(id), argument0, ANIM_NEUTRAL, 2)
}
