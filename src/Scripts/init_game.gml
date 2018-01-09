global.game = self
type_pool = ds_map_create()
animation_pool = ds_map_create()
animation_state_pool = ds_map_create()
event_pool = ds_map_create()
text_queue = ds_list_create()
inventory_pool = ds_list_create()
items_pool = ds_list_create()
item_img_list = ds_list_create()

current_room = TitleScreen
total_ticks = 0
init_img_list();

finished_text = false
playing_text = false
text_name = ''
text_value = ''
text_cursor = 1
current_text = ''
pending_text = 0
want_show_hud = true
init_hud();
instance_create(0, 0, controller_hud) 

create_item(ITEM_GEM1, 100, 100)
