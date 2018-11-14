// scripti saatu täältä https://www.youtube.com/watch?time_continue=487&v=7NHJ6A34V6I
//scripti toimii nyt ilman physiikkaa. eli otin sen pois roomin asetuksista
// tähän voisi vielä lisätä hyppykoodin mutta sitä en vielä laittanut


// basic player info
move_speed = 8;
jump_impulse= 21;
grav = 0.5;
v_speed = 0;
GroundCollision=false;
CharacterDies=false;

//tile map info

var l = layer_get_id("collission") ;
tilemap = layer_tilemap_get_id(l) ;

//sprite info
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);

pc=0;
hp=50;
max_hp=100;

//move_towards_point(x-1, y, 0);
