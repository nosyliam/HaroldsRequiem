var v, c; c = 15
repeat (16) {
    v = argument[c]
    if (is_string(v)) break
    if (v != 0) break
    c -= 1
}
argument_count = c + 1
for (i = 2; i < argument_count; i += 1) {
    game.text_queue[argument_count - i] = argument[i]
}
game.pending_text = argument_count - 2
npc_text(argument[0], argument1)
