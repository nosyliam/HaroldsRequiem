if total_ticks mod 50 = 0 and finished_text = true {
    show_message("QUE" + string(text_queue[0]))
    if ds_map_size(text_queue) > 0 {
        npc_text(text_name, text_queue[0])
        ds_map_delete(text_queue, 0)
        exit;
    } 
    playing_text = false
    tile_layer_show(99)
}
if total_ticks mod 4 = 0 and playing_text = true {
    current_text += string_char_at(text_value, text_cursor)
    text_cursor += 1;
    if text_cursor >= string_length(text_value) {
        finished_text = true
    }
}
