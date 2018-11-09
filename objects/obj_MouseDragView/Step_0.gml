if (mouse_check_button_pressed(mb_middle)) 
{ 
	drag_x = mouse_x; 
	drag_y = mouse_y; 
	
	}

if (mouse_check_button(mb_middle)) 
{  
	camera_set_view_pos(view_camera[0], max(0, min(camera_get_view_x(view_camera[0]), room_width - 
	camera_get_view_width(view_camera[0]))), max(0, min(camera_get_view_y(view_camera[0]), room_height - 
	camera_get_view_height(view_camera[0]))));﻿

}