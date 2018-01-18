global.game = self
type_pool = ds_map_create()
animation_pool = ds_map_create()
animation_state_pool = ds_map_create()
animation_save_pool = ds_map_create()
enemy_pool = ds_list_create()
lock_pool = ds_map_create()
event_pool = ds_map_create()
text_queue = ds_list_create()

inventory_pool = ds_list_create()
items_pool = ds_list_create()
item_img_list = ds_list_create()
item_name_list = ds_list_create()
item_selected = -1
item_viewing = -1

within_transition = false
transition_dest = 0
transition_frame = 0
transition_wait = 0
current_room = TitleScreen
total_ticks = 0
init_img_list();
init_name_list();

within_cutscene = false
cutscene_script = 0
cutscene_ticks = 0

finished_text = false
playing_text = false
text_name = ''
text_value = ''
text_cursor = 1
current_text = ''
pending_text = -1
want_show_hud = true
load_hud();
init_hud();
instance_create(0, 0, controller_hud) 
