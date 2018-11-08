// When clicking a button -> it will go to on state
if ( device_mouse_check_button_pressed( 0, mb_left ) )
{
    with ( instance_position( mouse_x, mouse_y, obj_HudButton ) )
    {
		switch (id) {
			case global.BUTTON_INSTANCE1:
			    image_index = 1;
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
	obj_HudButton.image_index = 0;
}
