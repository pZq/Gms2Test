/// @description Insert description here
// You can write your code in this editor

// owner tässä meinaa että skeleton, koska skeletonissa määritellään attack = instance create
// ja seuraavalla rivillä kerrotaan että attack.owner = id jolloin hyökkääjän id tulee näkyviin tänne owner
// objektiin. ja tättädää. tässä ollaan perkele hä!?
if (instance_exists(owner) && owner.image_yscale==0.6) 
	tilemap = tilemap1;
else
	tilemap = tilemap2;

if (!GroundCollision) {
	ObjectCollision(move_speed, v_speed, grav, tilemap, sprite_bbox_bottom, sprite_bbox_top, sprite_bbox_right, sprite_bbox_left);
	image_angle += 3.5; 
}
	
//direction = point_direction(x, y, ex, ey);

//image_angle = point_direction(x, y, instance_nearest(x, y, obj_enemySkeleton).x, instance_nearest(x, y, obj_enemySkeleton).y);



