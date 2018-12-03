/// @description Insert description here
// You can write your code in this editor
ex = instance_nearest(x, y, obj_fox).x;
ey = instance_nearest(x, y, obj_fox).y;

if (!GroundCollision) {
	ObjectCollision(move_speed, v_speed, grav, tilemap, sprite_bbox_bottom, sprite_bbox_top, sprite_bbox_right, sprite_bbox_left);
	image_angle += 3.5; 
}
	
//direction = point_direction(x, y, ex, ey);

//image_angle = point_direction(x, y, instance_nearest(x, y, obj_enemySkeleton).x, instance_nearest(x, y, obj_enemySkeleton).y);



