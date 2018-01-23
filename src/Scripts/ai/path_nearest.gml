// https://forum.yoyogames.com/index.php?threads/solved-moving-to-nearest-place-on-path.19734/

rx = path_get_point_x(argument0, 0);
ry = path_get_point_y(argument0, 0);
d = point_distance(rx, ry, argument1, argument2);
n = path_get_number(argument0);

var x1, x1;
x2 = rx
y2 = ry
var td, p, tx, ty;

for(i = 1; i < n; i += 1) {
    x1 = x2;
    y1 = y2;
    x2 = path_get_point_x(argument0, i);
    y2 = path_get_point_y(argument0, i);

    td = point_distance(x1, y1, x2, y2);
    p = ((x2 - x1) * (argument1 - x1) + (y2 - y1) * (argument2 - y1)) / td;

    if p > 0 and p < td {
        tx = x1 + (x2 - x1) * p;
        ty = y1 + (y2 - y1) * p;
    } else {
        tx = x2;
        ty = y2;
    }

    td = point_distance(tx, ty, argument1, argument2);
    if td < d {
        d = td;
        rx = tx;
        ry = ty;
    }
}

n = path_get_length(argument0);

var px, py;
nx = path_get_point_x(argument0, 0);
ny = path_get_point_y(argument0, 0);
result = 0;

if (rx == nx and ry == ny) return 0;

for(i = 1; i < n; i += 1) {
    px = nx;
    py = ny;
    nx = path_get_point_x(argument0, i);
    ny = path_get_point_y(argument0, i);

    if (nx - px) * (ry - py) == (rx - px) * (ny - py) {
        d = point_distance(px, py, rx, ry);
        p = (nx - px) * (rx - px) + (ny - py) * (ry - py);
        if p >= 0 and p <= d * point_distance(px, py, nx, ny)
            return (result + d) / path_get_length(argument0);
    }

    result += point_distance(px, py, nx, ny);
}


return 0;
