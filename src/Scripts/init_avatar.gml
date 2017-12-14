global.game.animation_pool[oid(instance_id)] = 0
global.game.animation_state_pool[oid(instance_id)] = 0
global.game.type_pool[oid(instance_id)] = argument0
play_anim(oid(instance_id), TYPE_PLAYER, ANIM_WALK, 1);
