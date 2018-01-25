for (n = 0; n < ds_list_size(game.inventory_pool); n += 1) {
    item = ds_list_find_value(game.inventory_pool, n)
    if (item == argument0) return n
}

return false
