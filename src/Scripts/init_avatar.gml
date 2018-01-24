game.animation_pool[oid(id)] = 0
game.animation_state_pool[oid(id)] = 0
game.animation_save_pool[oid(id)] = -1
game.type_pool[oid(id)] = argument0
game.lock_pool[oid(id)] = -1
type = argument0
current_anim = 2
current_dir = 2

if (argument0 == TYPE_PLAYER) {
    globalvar player;
    player = self
    weapon_damage = 20
    about_to_die = false
    dying = false
} else {
    path = 0
    on_path = false
    want_path = true
    nearby_player = false
    last_mag = 0
    last_posx = 0
    last_posy = 0
    temp_path = 0
    avhealth = enemy_health(argument0)
    ds_list_add(game.enemy_pool, oid(id))
    play_anim(oid(id), argument0, ANIM_NEUTRAL, 2)
}
