/* create event */
mx = x;
my = y;

count = 0;

/* Step event */
//Global Left Pressed event:

if (mouse_check_button(mb_left) && (count < 1)) {
	instance_create_layer(mx, my, "Bullet_Instance",obj_bullet);
	audio_sound_pitch(snd_MissileLaunch, random_range(0.8, 1.2))
	audio_play_sound(snd_MissileLaunch, 10, false);

	//direction = other.direction;
	//image_angle = direction;
	count = 15;
}

count--;

// add comment