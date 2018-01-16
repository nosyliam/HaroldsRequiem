total_ticks += 1;
if (!within_cutscene) {
    tick_controls();
    tick_mouse();
} else {
    script_execute(cutscene_script)
}
tick_text();
