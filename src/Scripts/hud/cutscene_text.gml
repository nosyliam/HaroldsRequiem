var v, c; c = 15
repeat (16) {
    v = argument[c]
    if (is_string(v)) break
    if (v != 0) break
    c -= 1
}
argument_count = c + 1
for (i = 1; i < argument_count; i += 1) {
    global.game.text_queue[argument_count - i - 1] = argument[i]
}
global.game.pending_text = argument_count - 3
npc_text(argument[0], string(text_queue[pending_text]))
