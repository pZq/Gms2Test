/// @description Insert description here
// You can write your code in this editor
ex = instance_nearest(x, y, obj_fox).x;
ey = instance_nearest(x, y, obj_fox).y;

if (!GroundCollision)
	ObjectCollision(move_speed, v_speed, grav, tilemap, sprite_bbox_bottom, sprite_bbox_top, sprite_bbox_right, sprite_bbox_left);
	
//direction = point_direction(x, y, ex, ey);

image_angle+=5;
