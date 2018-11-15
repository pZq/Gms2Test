/// @function HurtboxCreate(image_xscale,image_yscale,xOffset,yOffset)
/// @description
/// @param {real} image_xscale
/// @param {real} image_yscale
/// @param {real} xOffset
/// @param {real} yOffset

/*
This script looks complicated, but it's fairly simple. First, we create an oHurtbox object and 
store the ID of that object in the _hurtbox variable. Then, using the _hurtbox variable, we pass in the owner, 
which will be whatever object is calling this script. 
From there we define the scale, and offset of the hurtbox. 
Now that the script is created we can put it into action. 
Open the oPlayer object and add the following code to the create event.
*/
_hurtbox = instance_create_layer(x, y, "instances", obj_hurtbox);
_hurtbox.owner = id;
_hurtbox.image_xscale = argument0;
_hurtbox.image_yscale = argument1;
_hurtbox.xOffset = argument2;
_hurtbox.yOffset = argument3;

return _hurtbox;