// can we make this faster?
if (total_ticks mod 4 != 0) {
    return animation_state_pool[argument0];
}
var fcurrent;
compressed = animation_pool[argument0];
fcurrent = animation_state_pool[argument0];
fstart = get_packed_8(compressed);
fend = get_packed_16(compressed);
if (fcurrent >= fend) {
    if (animation_save_pool[argument0] != -1) {
        animation_pool[argument0] = animation_save_pool[argument0]
        animation_state_pool[argument0] = animation_save_pool[argument0] & $FF

        ret = animation_save_pool[argument0] & $FF
        animation_save_pool[argument0] = -1
        if (unlock_callback(argument0, lock_pool[argument0])) {
            lock_pool[argument0] = -1
            return fcurrent;
        }
        lock_pool[argument0] = -1
        return ret;
    } else {
        animation_state_pool[argument0] = fstart
    }
    return fstart;
} else {
    fcurrent = fcurrent + 1; // fcurrent++ doesn't want to parse
    animation_state_pool[argument0] = fcurrent
    return fcurrent;
}
