// When clicking/holding a button -> it will go to on state
if ( device_mouse_check_button_pressed( 0, mb_left ) )
{
    // go into a object that was clicked, if the clicked object was obj_HudButton
	with ( instance_position( device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_HudButton ) )
    {	
		// Check what the id is of the current object instance.
		// id:s are collected in obj_Hud_button create event script
		switch (id) {
			case global.BUTTON_INSTANCE1: // If first button was pressed
			    image_index = global.BUTTON_FOX_DOWN; // Fox button down sprite image
				CreatedInstanceID = instance_create_layer(x,400, "Instances", obj_fox); // create fox object to instances layers
				CreatedInstanceID1 = instance_create_layer(x,100, "Instances_1", obj_fox); // create fox object to instances layers
				CreatedInstanceID1.image_xscale=0.7;
				CreatedInstanceID1.image_yscale=0.7;
				variable_instance_set(CreatedInstanceID, "hp", 100); // give HP to created instance (randomly between 0..100)
				variable_instance_set(CreatedInstanceID1, "hp", 100); // give HP to created instance (randomly between 0..100)
				global.InstanceArray = ArrayAdd(global.InstanceArray, CreatedInstanceID);
				break;
			case global.BUTTON_INSTANCE2: // If second button was pressed
				image_index = 1; // sprite image 1
				CurrentCameraX = camera_get_view_x(view_camera[0]);
				CurrentCameraY = camera_get_view_y(view_camera[0]);
				COUNT=0;
				alarm[0] = 1; // this alarm executes the obj_HudButton alarm and not this obj_HudButtonScript alarm.
				// This for statement gets all create obj_fox instances, and reduces the individual instance 
				// HP with eg -10 
				for (i=array_length_1d(global.InstanceArray);i>=0;i--) {
					ObjInstance = instance_find(obj_fox, i);
					if (variable_instance_exists(ObjInstance, "hp")) { // if current instance has the hp variable, lets reduce the value by 10
						CurrentHP = variable_instance_get(ObjInstance, "hp")
						variable_instance_set(ObjInstance, "hp", CurrentHP-10);
						ObjInstance.ShakeHit=true;
					}
				}
				
				break;
			case global.BUTTON_INSTANCE3: // If third button was pressed
				image_index = 1; // sprite image 1
				CreatedInstanceID = instance_create_layer(600,400, "Instances", obj_enemySkeleton);
				variable_instance_set(CreatedInstanceID, "hp", 100);
				global.InstanceSkeletonArray = ArrayAdd(global.InstanceSkeletonArray, CreatedInstanceID);
				
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