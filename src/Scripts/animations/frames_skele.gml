// forward = 1
// backwards = 2
// left = 3
// right = 4
switch (argument0) {
    case ANIM_WALK:
        switch (argument1) { 
            case 1: return combine_numbers(36, 39); break;
            case 2: return combine_numbers(0, 3); break;
            case 3: return combine_numbers(12, 15); break;
            case 4: return combine_numbers(24, 27); break;
        }
        break;
    case ANIM_NEUTRAL:
        switch (argument1) { 
            case 1: return combine_numbers(36, 36); break;
            case 2: return combine_numbers(0, 0); break;
            case 3: return combine_numbers(12, 12); break;
            case 4: return combine_numbers(24, 24); break;
        }
        break;
    case ANIM_SWING:
        switch (argument1) {
            case 1: return combine_numbers(40, 43); break;
            case 2: return combine_numbers(4, 7); break;
            case 3: return combine_numbers(16, 19); break;
            case 4: return combine_numbers(28, 31); break;
        }
        break;
    case ANIM_DEATH:
        switch (argument1) {
            case 1: return combine_numbers(44, 37); break;
            case 2: return combine_numbers(8, 11); break;
            case 3: return combine_numbers(20, 23); break;
            case 4: return combine_numbers(32, 35); break;
        }
        break;
    default:
        break;
}
