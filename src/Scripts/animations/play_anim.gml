if (game.lock_pool[argument0] != -1) exit
show_debug_message("WORK")
global.game.animation_save_pool[argument0] = -1
global.game.animation_pool[argument0] = get_frame_ranges(argument1, argument2, argument3)
global.game.animation_state_pool[argument0] = global.game.animation_pool[argument0] & $FF

