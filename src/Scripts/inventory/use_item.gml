switch (get_packed_16(argument0)) {
    case ITEM_POTION: player.health = 100; ds_list_delete(inventory_pool, get_packed_8(argument0)) break
}
