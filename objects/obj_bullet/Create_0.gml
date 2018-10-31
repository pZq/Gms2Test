phy_linear_velocity_x = mouse_x - x;
phy_linear_velocity_y = mouse_y - y;

var dir = point_direction(x, y, mouse_x, mouse_y);
//physics_apply_impulse(x, y, lengthdir_x(phy_linear_velocity_x, dir), lengthdir_y(phy_linear_velocity_y, dir));
physics_apply_impulse(x, y, lengthdir_x(mouse_x-x, dir), lengthdir_y(y-mouse_y, dir));

// hit the floor ?
hit = false;
