switch (argument0) {
    case TYPE_PLAYER:
        return frames_harold(argument1, argument2); break;
    case TYPE_NECROMANCER:
        return frames_necro(argument1, argument2); break;
    case TYPE_ZOMBIE:
        return frames_zombie(argument1, argument2); break;
    case TYPE_SKELETON:
        return frames_skele(argument1, argument2); break;
}
