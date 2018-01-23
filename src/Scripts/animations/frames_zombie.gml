// forward = 1
// backwards = 2
// left = 3
// right = 4
switch (argument0) {
    case ANIM_WALK:
        switch (argument1) { 
            case 1: return combine_numbers(84, 87); break;
            case 2: return combine_numbers(48, 51); break;
            case 3: return combine_numbers(60, 63); break;
            case 4: return combine_numbers(72, 75); break;
        }
        break;
    case ANIM_NEUTRAL:
        switch (argument1) { 
            case 1: return combine_numbers(84, 84); break;
            case 2: return combine_numbers(48, 48); break;
            case 3: return combine_numbers(60, 60); break;
            case 4: return combine_numbers(72, 72); break;
        }
        break;
    case ANIM_SWING:
        switch (argument1) {
            case 1: return combine_numbers(88, 91); break;
            case 2: return combine_numbers(52, 55); break;
            case 3: return combine_numbers(64, 67); break;
            case 4: return combine_numbers(76, 79); break;
        }
        break;
    case ANIM_DEATH:
        switch (argument1) {
            case 1: return combine_numbers(92, 95); break;
            case 2: return combine_numbers(56, 59); break;
            case 3: return combine_numbers(68, 71); break;
            case 4: return combine_numbers(80, 83); break;
        }
        break;
    default:
        break;
}
