// forward = 1
// backwards = 2
// left = 3
// right = 4
switch (argument0) {
    case ANIM_WALK:
        switch (argument1) { 
            case 1: return combine_numbers(0, 2); break;
            case 2: return combine_numbers(20, 22); break;
            case 3: return combine_numbers(33, 35); break;
            case 4: return combine_numbers(14, 16); break;
        }
        break;
    case ANIM_NEUTRAL:
        switch (argument1) { 
            case 1: return combine_numbers(1, 1); break;
            case 2: return combine_numbers(21, 21); break;
            case 3: return combine_numbers(34, 34); break;
            case 4: return combine_numbers(15, 15); break;
        }
        break;
    case ANIM_SWING:
        switch (argument1) {
            case 1: return combine_numbers(7, 10); break;
            case 2: return combine_numbers(26, 29); break;
            case 3: return combine_numbers(36, 39); break;
            case 4: return combine_numbers(3, 6); break;
        }
        break;
    default:
        break;
}
