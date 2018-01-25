if (!game.map_open) exit

vx = view_xview[0]
vy = view_yview[0]

if mouse_collides(mouse_x, mouse_y, vx + 96, vy + 128, vx + 128, vy + 160) {
    show_label("Necrotic Castle")
    game.location_selected = neccastle; exit
}

if mouse_collides(mouse_x, mouse_y, vx + 96, vy + 192, vx + 128, vy + 224) {
    show_label("Ruined Hideout")
    game.location_selected = hideout; exit
}

if mouse_collides(mouse_x, mouse_y, vx + 256, vy + 192, vx + 288, vy + 224) {
    show_label("Undead Cave")
    game.location_selected = cave; exit
}

if mouse_collides(mouse_x, mouse_y, vx + 208, vy + 128, vx + 256, vy + 176) {
    show_label("Village")
    game.location_selected = village; exit
}

game.location_selected = -1
