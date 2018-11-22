if(mouse_check_button_pressed(mb_right)){
	drag_x = mouse_x; 
	
}


if (mouse_check_button(mb_right)){ 

camera_set_view_pos(view_camera[0],
						drag_x - (mouse_x - camera_get_view_x(view_camera[0])),
						max(0, min(camera_get_view_y(view_camera[0]), room_height - camera_get_view_height(view_camera[0]))));

camera_set_view_pos(view_camera[0],
						max(0, min(camera_get_view_x(view_camera[0]), room_width - camera_get_view_width(view_camera[0]))),
						max(0, min(camera_get_view_y(view_camera[0]), room_height - camera_get_view_height(view_camera[0]))));
						
// Move the mountains when viewport changes. The second commented line is for eg. the foreground.
var _cam_x = camera_get_view_x(view_camera[0]) ;
layer_x("Background", _cam_x * 0.98); // Change the background layer name to whatever you use in the room editor
layer_x("BackgroundsMountains", _cam_x * 0.95); // Change the background layer name to whatever you use in the room editor
 
layer_x("GroundObj2" , _cam_x * 0.2);
layer_x("Ground1" , _cam_x * 0.2);
layer_x("Instances_1" , _cam_x * 0.2);
layer_x("GroundObj2_1" , _cam_x * 0.2);

layer_x("Foreground", _cam_x * -0.3);   // Change the 0.25 and 0.5 values to change the speed of the effect
}