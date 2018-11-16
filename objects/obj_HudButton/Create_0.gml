// needed for recognizing which button was pressed in obj_hud step script
global.BUTTON_INSTANCE1 = instance_find(obj_HudButton,0)
global.BUTTON_INSTANCE2 = instance_find(obj_HudButton,1)
global.BUTTON_INSTANCE3 = instance_find(obj_HudButton,2)

// define array for gathering health info of each created game_object
global.InstanceArray[0] = pointer_null;
global.InstanceSkeletonArray[0] = pointer_null;

// stop sprite animation
image_speed=0;

// Fox button sprite image number for up and down actions
global.BUTTON_FOX_UP = 2;
global.BUTTON_FOX_DOWN = 3;

// Make all object instances to have sprite image 0 at start
obj_HudButton.image_index = 0;

// go into first game object instance and show sprite with button fox up image
with (instance_find(obj_HudButton, 0)) {
		image_index = global.BUTTON_FOX_UP;
}