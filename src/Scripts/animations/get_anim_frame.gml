// can we make this faster?
if (global.game.total_ticks mod 4 != 0) {
    return global.game.animation_state_pool[argument0];
}
var fcurrent;
compressed = global.game.animation_pool[argument0];
fcurrent = global.game.animation_state_pool[argument0];
fstart = get_packed_8(compressed);
fend = get_packed_16(compressed);
if (fcurrent >= fend) {
    if (global.game.animation_save_pool[argument0] != -1) {
        global.game.animation_pool[argument0] = global.game.animation_save_pool[argument0]
        global.game.animation_state_pool[argument0] = global.game.animation_save_pool[argument0] & $FF
        global.game.lock_pool[argument0] = 0
        return global.game.animation_save_pool[argument0] & $FF
    } else {
        global.game.animation_state_pool[argument0] = fstart
    }
    return fstart;
} else {
    fcurrent = fcurrent + 1; // fcurrent++ doesn't want to parse
    global.game.animation_state_pool[argument0] = fcurrent
    return fcurrent;
}
