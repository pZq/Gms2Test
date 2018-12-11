/// @description Insert description here
// You can write your code in this editor

//sprite info
sprite = sprite_index;
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);

CharacterInitialize(FacingLeft);

// override basic player info
move_speed = -2;
v_speed = -12;
grav = 0.5;

image_angle = 180; 