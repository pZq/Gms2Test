if (COUNT <= 10) {
// (min, max, nShakes)
ShakeScreen(1,5);
COUNT++;
alarm[0] = 3;
} 
else {
	camera_set_view_pos(view_camera[0], CurrentCameraX, CurrentCameraY);	
}