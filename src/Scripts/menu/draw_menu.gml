draw_sprite(playbtn, 0, 192, 170)
draw_sprite(helpbtn, 0, 192, 230)

if (mouse_check_button_pressed(mb_left) and help_open == false) {
    if mouse_collides(mouse_x, mouse_y, 72, 145, 312, 195) room_goto(loader)
    if mouse_collides(mouse_x, mouse_y, 72, 205, 312, 255) help_open = true
}

if keyboard_check_pressed(vk_backspace) help_open = false
if (help_open == true) {
    draw_sprite(help, 0, 192, 192)
    draw_set_color(c_white)
    draw_set_font(helpfont_desc)
    draw_set_halign(fa_left)
    draw_text_ext(84, 115, "Harold's Requiem is the game entailing the epic adventure of Harold. Explore three different forbidden lands and recover the lost gems to restore power to the kingdom. Some of the dungeons may not be finished as the game is not complete.", 10, 220)
    draw_text_ext(84, 216, "Use the arrow keys to move, Q to attack, R to open your map, and your mouse to pick up items. Made by Liam Meshorer. (Press Backspace to exit)", 10, 220)
}
