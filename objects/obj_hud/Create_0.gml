// comment
global.BUTTON_FOX_UP = 2;
global.BUTTON_FOX_DOWN = 3;

obj_HudButton.image_index = 0;

with (instance_find(obj_HudButton, 0)) {
		image_index = global.BUTTON_FOX_UP;
}