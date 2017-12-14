// forward = 1
// backwards = 2
// left = 3
// right = 4
switch (argument0) {
    case ANIM_WALK:
        switch (argument1) { 
            case 1: return combine_frames(0, 2); break;
            case 2: return combine_frames(24, 26); break;
            case 3: return combine_frames(36, 38); break;
            case 4: return combine_frames(12, 14); break;
        }
        break;
    case ANIM_NEUTRAL:
        switch (argument1) { 
            case 1: return combine_frames(1, 1); break;
            case 2: return combine_frames(25, 25); break;
            case 3: return combine_frames(37, 37); break;
            case 4: return combine_frames(13, 13); break;
        }
    default:
        break;
}
