total_ticks += 1;
tick_cleanup();
if (!within_cutscene) {
    tick_controls();
    tick_mouse();
} else {
    script_execute(cutscene_script)
}
tick_enemies();
tick_text();
