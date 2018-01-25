if (total_ticks mod 100 == 0 and finished_text = true) {
    if (pending_text >= 0) {
        npc_text(text_name, string(text_queue[pending_text]))
        pending_text -= 1
        exit;
    }
    playing_text = false
    finished_text = false
    text_offset = 0
    
    // For cutscenes only
    if (want_show_hud) {
        tile_layer_show(99)
    }
}

if (total_ticks mod 2 == 0 and playing_text = true) {
    current_text += string_char_at(text_value, text_cursor)
    text_cursor += 1;
    if (text_cursor >= string_length(text_value)) {
        finished_text = true
    }
}
