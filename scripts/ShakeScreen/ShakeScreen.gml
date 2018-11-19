/// @function ShakeScreen(min,max,nShakes)
/// @param min Represents the number of pixels the screenshake may move at the least
/// @param max Represents the number of pixels the screenshake may move at most
/// @param nShakes How many times screen is shaked. 1 time just moves screen one time

//nShakes = argument2;
nShakes = 10;

for (i=0;i<nShakes;i++) {
	var cam = view_get_camera(0);
	xview = camera_get_view_x(cam);
	yview = camera_get_view_y(cam);
	camera_set_view_pos(cam, xview+(random_range(argument0,argument1)*(choose(1,-1))),yview+(random_range(argument0,argument1)*(choose(1,-1))));
}
camera_set_view_pos(view_camera[0], CurrentCameraX, CurrentCameraY);