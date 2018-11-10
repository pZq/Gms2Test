var dx = move_speed * (keyboard_check(vk_right) - keyboard_check((vk_left)));
var dy = v_speed;
v_speed += grav;

//do vertical move
y += dy;
if (dy > 0) 
	{ //downwards
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0)
	{
	y = ((bbox_bottom & ~ 15) - 1) - sprite_bbox_bottom; //15 on gridistä yhden pienempi, eli käytämme 16 gridiä
	v_speed = 0;
	}
}
else {//upwards
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0) 
	{
	y = ((bbox_top + 16) & ~ 15) - sprite_bbox_top; //15 on gridistä yhden pienempi, eli käytämme 16 gridiä
	v_speed = 0;
	}
}
	
//horizontal movement
x += dx;
if (dx > 0)  
	{ //right
	var t1 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0)
	{
	x = ((bbox_right & ~ 15) - 1) - sprite_bbox_right; //15 on gridistä yhden pienempi, eli käytämme 16 gridiä
	
	}
}
else {//left
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0) 
	{
	x = ((bbox_left + 16) & ~ 15) - sprite_bbox_left; //15 on gridistä yhden pienempi, eli käytämme 16 gridiä
	
	}
}
	