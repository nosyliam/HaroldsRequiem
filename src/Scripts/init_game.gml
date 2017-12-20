global.game = self
type_pool = ds_map_create()
animation_pool = ds_map_create()
animation_state_pool = ds_map_create()
event_pool = ds_map_create()
text_queue = ds_map_create()
total_ticks = 0

finished_text = false
playing_text = false
text_name = ''
text_value = ''
text_cursor = 1
current_text = ''
init_hud();
instance_create(0, 0, controller_hud) 

cutscene_text('The King', 'The ting goes skrra ka ka ka ka ka ka', 'Test text. Test text. Test text.','adssda')
