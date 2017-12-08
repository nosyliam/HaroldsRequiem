case argument0:
    switch ANIM_WALK_FWD:
        return 9, 11
        break;
    switch ANIM_WALK_BACK:
        return 0, 2
        break;
    switch ANIM_WALK_LEFT:
        return 3, 5
        break;
    switch ANIM_WALK_RIGHT:
        return 6, 8
        break;
    switch ANIM_NEUTRAL:
        return 0, 0
        break;
    default:
        return 0, 0
        break;
