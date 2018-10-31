if (!hit) {
	//phy_rotation = -direction;//it's like image angle for bullets
	phy_rotation = -point_direction(x, y, x+phy_speed_x, y+phy_speed_y);//it's like image angle for bullets
	phy_angular_velocity = 1;
	
}