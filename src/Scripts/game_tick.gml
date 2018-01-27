total_ticks += 1;
if (game_finished) exit
tick_cleanup();
if (!within_cutscene) {
    tick_controls();
    tick_mouse();
} else {
    script_execute(cutscene_script)
}
tick_enemies();
tick_player();
tick_text();

