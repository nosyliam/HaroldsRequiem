// can we make this faster?
if global.game.total_ticks mod 4 != 0 {
    return global.game.animation_state_pool[argument0];
}
var fcurrent;
compressed = global.game.animation_pool[argument0];
fcurrent = global.game.animation_state_pool[argument0];
fstart = compressed & $FF;
fend = (compressed & $FF00) >> 8;
if (fcurrent >= fend) {
    global.game.animation_state_pool[argument0] = fstart
    return fstart;
} else {
    fcurrent = fcurrent + 1; // fcurrent++ doesn't want to parse
    global.game.animation_state_pool[argument0] = fcurrent
    return fcurrent;
}
