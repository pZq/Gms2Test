// scripti saatu täältä https://www.youtube.com/watch?time_continue=487&v=7NHJ6A34V6I
//scripti toimii nyt ilman physiikkaa. eli otin sen pois roomin asetuksista

// basic player info
move_speed = 8;
jump_impulse= 21;
grav = 0.75;
v_speed = 0;

//tile map info

var l = layer_get_id("collission") ;
tilemap = layer_tilemap_get_id(l) ;

//sprite info
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);