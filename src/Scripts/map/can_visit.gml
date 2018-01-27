if (room == hideout or room == neccastle or room == cave) if (argument0 != village) return -1

if (room == neccastle and !has_item(ITEM_KEY_NEC)) return -2
if (room == hideout and !has_item(ITEM_KEY_SKEL)) return -2
if (room == cave and !has_item(ITEM_KEY_ZOM)) return -2

if (room == village) {
    if (argument0 == cave and !has_item(ITEM_GEM1)) return -1
    if (argument0 == neccastle and !has_item(ITEM_GEM3)) return -1
}

return 1
