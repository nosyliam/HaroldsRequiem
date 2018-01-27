if (within_transition) exit
switch (cutscene_state) {
    case 0: play_anim(oid(player.id), TYPE_PLAYER, ANIM_WALK, 1); cutscene_state += 1; break;
    case 1: if (player.y == 264) cutscene_state += 1; else player.y -= 1; shift_hud() break;
    case 2: play_anim(oid(player.id), TYPE_PLAYER, ANIM_NEUTRAL, 1); cutscene_state += 1; break;
    case 3: 
        cutscene_text("The King", "Hello, young Harold. We have been expecting you.", 
                      "As you may know, the Stonelord has taken our precious gem of power.",
                      "Our people are suffering from the inbalance of power.",
                      "The famine and floods are endless. The villages are becoming barren.",
                      "We believe he has placed the power gem in the skeleton-infested hideout.",
                      "It is your task to find it. Good luck, Harold. The kingdom is counting on you.")
        cutscene_state += 1; break;
   case 4: if (playing_text == false) cutscene_state += 1; break;
   case 5: play_anim(oid(player.id), TYPE_PLAYER, ANIM_WALK, 2); cutscene_state += 1; break;
   case 6: if (player.y == 740) {
                room_transition(village, 500); 
                player.y += 1; shift_hud()
           } else { player.y += 1 shift_hud() }
}
