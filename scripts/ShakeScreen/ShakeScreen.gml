/// @desc screenshake_add(min,max)
/// @param min Represents the number of pixels the screenshake may move at the least
/// @param max Represents the number of pixels the screenshake may move at most

//var cam = view_get_camera(0);
//var xview = camera_get_view_x(cam);
//var yview = camera_get_view_y(cam);
//camera_set_view_pos(cam, (random_range(argument0,argument1)*(choose(1,-1))),(random_range(argument0,argument1)*(choose(1,-1))));
arq0 = argument0
arq1 = argument1

camh = camera_get_view_height(0);
camw = camera_get_view_width(0);


camxx = obj_player.x - camera_get_view_height(0);
camyy = obj_player.y - camera_get_view_width(0);


{
   camxx = clamp(camxx,0,room_width-camw)
   camyy = clamp(camyy,0,room_height-camh)
}

camera_set_view_pos(view_camera,camxx,camyy)