x1 = argument[0]
y1 = argument[1]
text = argument[2];
c1 = make_color_rgb(32, 32, 0)

c2 = draw_get_color();
draw_set_color(c1);

draw_text(x1 + 1, y1, text);
draw_text(x1, y1 + 1, text);
draw_text(x1 + 1, y1 + 1, text);

draw_set_color(c2);

draw_text(x1, y1, text);
