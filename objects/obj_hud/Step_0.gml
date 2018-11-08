// When clicking/holding a button -> it will go to on state
if ( device_mouse_check_button_pressed( 0, mb_left ) )
{
    // go into a object that was clicked, if the clicked object was obj_HudButton
	with ( instance_position( mouse_x, mouse_y, obj_HudButton ) )
    {	
		// Check what the id is of the current object instance.
		// id:s are collected in obj_Hud_button create event script
		switch (id) {
			case global.BUTTON_INSTANCE1: // If first button was pressed
			    image_index = global.BUTTON_FOX_DOWN; // Fox button down sprite image
				instance_create_layer(x,250, "Instances", obj_fox); // create fox object to instances layers
				
				// REMEMBER TO KILL obj_fox instance at suitable positions -> when killed or similar....
				break;
			case global.BUTTON_INSTANCE2: // If second button was pressed
				image_index = 1; // sprite image 1
				break;
			case global.BUTTON_INSTANCE3: // If third button was pressed
				image_index = 1; // sprite image 1
				break;
		}
    }
}

// if mouse released
if ( device_mouse_check_button_released( 0, mb_left ) ) {
	// Put all buttons to first sprite image i.e. Up state
	obj_HudButton.image_index = 0;
	
	// Go into first occurance of obj_HudButton and make it to have fox sprite up selected
	with (instance_find(obj_HudButton, 0)) {
		image_index = global.BUTTON_FOX_UP; // add sprite image for fox button up state
	}
	
	
}
