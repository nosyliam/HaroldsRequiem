if (game.health <= 0 and !player.about_to_die) 
    player.about_to_die = true; player.death_ts = total_ticks
    if (has_item(ITEM_GEM1) and room == cave) drop_item(has_item(ITEM_GEM1))
    if (has_item(ITEM_GEM3) and room == hideout) drop_item(has_item(ITEM_GEM3))
    
if (player.about_to_die and !player.dying and total_ticks - player.death_ts > 40) {
    player.dying = true
    death_frame = 0
    play_anim(oid(player.id), TYPE_PLAYER, ANIM_DEATH, player.current_dir);
    lock_pool[oid(player.id)] = 1
    exit
}

if (run_boost and stamina > -10 and total_ticks mod 4 == 0) stamina -= 4
if (!run_boost and stamina < maxstamina and total_ticks mod 4 == 0 ) stamina += 2
if (health < maxhealth and total_ticks mod 40 == 0) health += 1
