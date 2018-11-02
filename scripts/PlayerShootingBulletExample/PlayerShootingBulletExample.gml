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

// Pasteen nää tänne koska en viitti tehä GMS:n ulkopuolelta tiedostoja GITTIIN

//Create Event
xmove = 0;
sprwidth = sprite_get_width(spr_cloudcover);

//Step Event
xmove -= 5;
if (xmove <= -sprwidth){xmove = 0}

//Draw Event
draw_sprite(spr_cloudcover, 0, xmove, 0);
draw_sprite(spr_cloudcover, 0, (xmove + sprwidth), 0);

// STEP EVENT OF THE PLAYER OR SOME CONTROLLER OBJECT
var _cam_x = camera_get_view_x(view_camera[0]) ;
layer_x("parallax_background_1", _cam_x * 0.25); // Change the background layer name to whatever you use in the room editor
layer_x("parallax_background_2", _cam_x * 0.5);   // Change the 0.25 and 0.5 values to change the speed of the effect
