for (n = 0; n < ds_list_size(garbage_pool); n += 1) {
    object = ds_list_find_value(garbage_pool, n)
    with (object) {
        instance_destroy();
    }
    ds_list_delete(enemy_pool, ds_list_find_index(enemy_pool, oid(object)))
    ds_list_delete(garbage_pool, 0)
}
