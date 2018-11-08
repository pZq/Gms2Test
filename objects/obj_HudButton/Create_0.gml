// needed for recognizing which button was pressed in obj_hud step script
global.BUTTON_INSTANCE1 = instance_find(obj_HudButton,0)
global.BUTTON_INSTANCE2 = instance_find(obj_HudButton,1)
global.BUTTON_INSTANCE3 = instance_find(obj_HudButton,2)

// stop sprite animation
image_speed=0;