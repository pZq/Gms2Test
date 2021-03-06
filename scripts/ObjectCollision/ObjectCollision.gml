/// @function ObjectCollision(move_speed,v_speed,grav,tilemap,sprite_bbox_bottom,sprite_bbox_top,sprite_bbox_right,sprite_bbox_left)
/// @description Adds gravity to the object from where this script is called. Also gives X axis a constant movement
/// @param {real} move_speed keyboard move speed
/// @param {real} v_speed 
/// @param {real} grav gravitation for the current object
/// @param {real} tilemap what tilemap to use
/// @param {real} sprite_bbox_bottom Boudning box related
/// @param {real} sprite_bbox_top Boudning box related
/// @param {real} sprite_bbox_right Boudning box related
/// @param {real} sprite_bbox_left Boudning box related


move_speed = argument0;
v_speed = argument1;
grav = argument2;
tilemap = argument3;
sprite_bbox_bottom = argument4;
sprite_bbox_top = argument5;
sprite_bbox_right = argument6;
sprite_bbox_left = argument7;

//var dx = move_speed * (keyboard_check(vk_right) - keyboard_check(vk_left));
var dx = move_speed;
var dy = v_speed;
v_speed += grav;

//do vertical move
y += dy;
if (dy > 0) 
	{ //downwards
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	
	// When sprite bounding box hits the collision tile
	if (t1 != 0 || t2 != 0)
	{
		if (image_yscale==0.6) {
			if (object_index == obj_enemySkeleton)
				y = (y&~8); //15 on gridistä yhden pienempi, eli käytämme 16 gridiä
			if (object_index == obj_fox)
				y = (y&~8); //15 on gridistä yhden pienempi, eli käytämme 16 gridiä
			
		}
		else {
			// ei oikee keksi miten sais ylä tason arrowin osumaan collision tileen ettei jäis ilmaan
			if (object_index == obj_arrow)
				y = (y&~15);
			else
				y = ((bbox_bottom & ~15) - 1) - sprite_bbox_bottom; //15 on gridistä yhden pienempi, eli käytämme 16 gridiä
		}
		
		v_speed = 0;
		
		// set a flag to true on ground collision detected. Used eg in obj_fox step event
		GroundCollision = true;
	}
}
else {//upwards
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0) 
	{
	//y = ((bbox_top + 16) & ~ 15) - sprite_bbox_top; //15 on gridistä yhden pienempi, eli käytämme 16 gridiä
	if (image_yscale==0.6) {
		if (object_index == obj_enemySkeleton)
			y = (y&~9); //15 on gridistä yhden pienempi, eli käytämme 16 gridiä
		if (object_index == obj_fox)
			y = (y&~8); //15 on gridistä yhden pienempi, eli käytämme 16 gridiä
	}
	else
		y = ((bbox_top + 16) & ~15) - sprite_bbox_top; //15 on gridistä yhden pienempi, eli käytämme 16 gridiä
		
	v_speed = 0;
	}
}

//horizontal movement
x += dx;


// below -> https://youtu.be/7NHJ6A34V6I?t=1505
/*
if (dx > 0)  
	{ //right
	var t1 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0)
	{
	
	if (image_yscale==0.6) {
			if (object_index == obj_enemySkeleton)
				x = (x&~9); // x = ((bbox_right & ~ 9) - 1) - sprite_bbox_right; //15 on gridistä yhden pienempi, eli käytämme 16 gridiä
			if (object_index == obj_fox)
				x = (x&~8); //x = ((bbox_right & ~ 8) - 1) - sprite_bbox_right; //15 on gridistä yhden pienempi, eli käytämme 16 gridiä
		}
	else
		x = ((bbox_right & ~15) - 1) - sprite_bbox_right; //15 on gridistä yhden pienempi, eli käytämme 16 gridiä
	
	}
}
else {//left
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0) 
	{
	if (image_yscale==0.6) {
			if (object_index == obj_enemySkeleton)
				x=((bbox_left & ~ 9) - 8) - sprite_bbox_left; //x = (x&~9); //15 on gridistä yhden pienempi, eli käytämme 16 gridiä
			if (object_index == obj_fox)
				x=((bbox_left & ~ 8) - 7) - sprite_bbox_left; //x = (x&~8); //15 on gridistä yhden pienempi, eli käytämme 16 gridiä
	}
	else
		x = ((bbox_left + 16) & ~15) - sprite_bbox_left; //15 on gridistä yhden pienempi, eli käytämme 16 gridiä
	}
}
*/