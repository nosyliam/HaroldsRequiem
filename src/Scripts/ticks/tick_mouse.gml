if (playing_text == true) exit;

if mouse_check_button_pressed(mb_left) {
    if (location_selected != -1) {
        if (can_visit(location_selected) != 1) {
            text_offset = 15
            if (can_visit(location_selected) == -2) {
                npc_text("", "You fail to understand the map through the thick fog. You'll need a key of some sort to magnify it.")
                exit
            }
            npc_text("", "As hard as you try, you can't seem to figure out how to get there.") 
            exit
        }
        tile_layer_hide(60)
        map_open = false
        room_transition(location_selected, 500)
        location_selected = -1
        exit
    }
    if (item_selected != -1) {
        if (ds_list_size(inventory_pool) >= 6) {
            text_offset = 10
            npc_text("", "Your bag seems to be to full to place anything else inside.") 
            exit;
        }
        ds_list_delete(items_pool, get_packed_8(item_selected))
        add_item(get_packed_16(item_selected));
        item_selected = -1;
    }
    if tile_layer_find(5, mouse_x, mouse_y) {
        drop_item(get_packed_8(item_viewing))
        tile_layer_delete(5)
        tile_layer_delete(6)
        item_viewing = -1;
        exit;
    } 
    if tile_layer_find(6, mouse_x, mouse_y) {
        if can_use(get_packed_16(item_viewing)) {
            use_item(item_viewing)
            tile_layer_delete(5)
            tile_layer_delete(6)
            item_viewing = -1;
        }
        exit;
    } 
    
    item_viewing = -1;
    if mouse_collides(mouse_x, mouse_y, view_xview[0] + 224, view_yview[0] + 288, view_xview[0] + 306, view_yview[0] + 336) {
        item_viewing = ((mouse_x - 224 - view_xview[0] - (mouse_x mod 32)) mod 32) + ((mouse_y - 288 - view_yview[0] - (mouse_y mod 32)) mod 32)
        item_viewing = combine_numbers(item_viewing, ds_list_find_value(inventory_pool, item_viewing))
        tile_layer_delete(5)
        tile_layer_delete(6)
        vx = 0
        vy = 0
        if can_use(get_packed_16(item_viewing)) {
            tile_add(guimain, 128 + vx, 144 + vy, 16, 16, mouse_x + 16, mouse_y - 10, 5)
            tile_add(guimain, 144 + vx, 144 + vy, 16, 16, mouse_x + 32, mouse_y - 10, 5)
            tile_add(guimain, 160 + vx, 144 + vy, 16, 16, mouse_x + 48, mouse_y - 10, 5)
            tile_add(guimain, 176 + vx, 144 + vy, 16, 16, mouse_x + 64, mouse_y - 10, 5)
        } else {
            tile_add(guimain, 128 + vx, 160 + vy, 16, 16, mouse_x + 16, mouse_y - 10, 5)
            tile_add(guimain, 144 + vx, 160 + vy, 16, 16, mouse_x + 32, mouse_y - 10, 5)
            tile_add(guimain, 160 + vx, 160 + vy, 16, 16, mouse_x + 48, mouse_y - 10, 5)
            tile_add(guimain, 176 + vx, 160 + vy, 16, 16, mouse_x + 64, mouse_y - 10, 5)
        }
        tile_add(guimain, 192 + vx, 144 + vy, 16, 16, mouse_x + 16, mouse_y + 6, 6)
        tile_add(guimain, 208 + vx, 144 + vy, 16, 16, mouse_x + 32, mouse_y + 6, 6)
        tile_add(guimain, 224 + vx, 144 + vy, 16, 16, mouse_x + 48, mouse_y + 6, 6)
        tile_add(guimain, 240 + vx, 144 + vy, 16, 16, mouse_x + 64, mouse_y + 6, 6)    
    }
    if (item_viewing == -1) {
        tile_layer_delete(5)
        tile_layer_delete(6)
    }
}
