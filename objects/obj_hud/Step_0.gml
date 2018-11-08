// When clicking a button -> it will go to on state
if ( device_mouse_check_button_pressed( 0, mb_left ) )
{
    with ( instance_position( mouse_x, mouse_y, obj_HudButton ) )
    {
		switch (id) {
			case global.BUTTON_INSTANCE1:
			    image_index = global.BUTTON_FOX_DOWN;
				break;
			case global.BUTTON_INSTANCE2:
				image_index = 1;
				break;
			case global.BUTTON_INSTANCE3:
				image_index = 1;
				break;
		}
    }
}
if ( device_mouse_check_button_released( 0, mb_left ) ) {
	// Put all button sprites to sprite number 0 of spr_ButtonSpawner
	//obj_HudButton.image_index = 0;
	
	// Go into first occurance of obj_HudButton and make it to have fox sprite up selected
	with (instance_find(obj_HudButton, 0)) {
		image_index = global.BUTTON_FOX_UP;
	}
	
	
}
