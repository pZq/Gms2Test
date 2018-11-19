/// @function ShakeScreen(min,max)
/// @param min Represents the number of pixels the screenshake may move at the least
/// @param max Represents the number of pixels the screenshake may move at most
/// @param count Number of shakes to perform

shakes = argument2;
shakespeed = argument3;

// The COUNT valiu comes from obj_HudButtonScript when pressing the button
// to shake screen
if (COUNT <= shakes) {
	var cam = view_get_camera(0);
	xview = camera_get_view_x(cam);
	yview = camera_get_view_y(cam);
	camera_set_view_pos(cam, xview+(random_range(argument0,argument1)*(choose(1,-1))),yview+(random_range(argument0,argument1)*(choose(1,-1))));
	COUNT++;
	alarm[0] = shakespeed;
} else { 
	camera_set_view_pos(view_camera[0], CurrentCameraX, CurrentCameraY);
}