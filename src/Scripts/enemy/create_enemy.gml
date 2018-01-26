switch (argument2) {
    case TYPE_ZOMBIE:
        with (instance_create(argument0, argument1, zombie)) path = argument3
        break;
    case TYPE_SKELETON:
        with (instance_create(argument0, argument1, skeleton)) path = argument3
        break;
}
