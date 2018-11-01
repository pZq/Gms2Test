// Examples of code

/* bullet facing direction Create event*/
phy_linear_velocity_x = mouse_x - x;
phy_linear_velocity_y = mouse_y - y;

var dir = point_direction(x, y, mouse_x, mouse_y);
//physics_apply_impulse(x, y, lengthdir_x(phy_linear_velocity_x, dir), lengthdir_y(phy_linear_velocity_y, dir));
physics_apply_impulse(x, y, lengthdir_x(mouse_x-x, dir), lengthdir_y(y-mouse_y, dir));

// hit the floor ?
hit = false;

/* bullet facing direction step event*/
if (!hit) {
	//phy_rotation = -direction;//it's like image angle for bullets
	phy_rotation = -point_direction(x, y, x+phy_speed_x, y+phy_speed_y);//it's like image angle for bullets
	phy_angular_velocity = 1;
	
}

/* bullet facing direction collision block event*/
// action
hit = true;
instance_create_layer(x, y, "Bullet_Instance",obj_explosion);
audio_sound_pitch(snd_explosion, random_range(0.8, 1.2))
audio_play_sound(snd_explosion, 10, false);

instance_destroy();

//Comment modafuggas!
