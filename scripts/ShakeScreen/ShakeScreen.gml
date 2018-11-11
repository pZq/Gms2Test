/// @desc screenshake_add(min,max)
/// @param min Represents the number of pixels the screenshake may move at the least
/// @param max Represents the number of pixels the screenshake may move at most

var cam = view_get_camera(0);
xview = camera_get_view_x(cam);
yview = camera_get_view_y(cam);
camera_set_view_pos(cam, xview+(random_range(argument0,argument1)*(choose(1,-1))),yview+(random_range(argument0,argument1)*(choose(1,-1))));
//camera_set_view_pos(cam, (random_range(argument0,argument1)*(choose(1,-1))),(random_range(argument0,argument1)*(choose(1,-1))));
