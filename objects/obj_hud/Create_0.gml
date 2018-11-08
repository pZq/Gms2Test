// Fox button sprite image number for up and down actions
global.BUTTON_FOX_UP = 2;
global.BUTTON_FOX_DOWN = 3;

// Make all object instances to have sprite image 0 at start
obj_HudButton.image_index = 0;

// go into first game object instance and show sprite with button fox up image
with (instance_find(obj_HudButton, 0)) {
		image_index = global.BUTTON_FOX_UP;
}