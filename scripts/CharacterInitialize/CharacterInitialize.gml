/// @function CharacterInitialize(facing
/// @description Initialize all needed variables on creat event of object
/// @param {real} facing Direction object is looking at (1 to right, -1 to left)

// basic player info
move_speed = 1;
jump_impulse= 21; // ???
grav = 0.5;
v_speed = 0;
GroundCollision=false;
facing=argument0;
image_xscale = facing;


//sprite info
sprite = sprite_index;
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);

// Hit & Attack info
CharacterDies=false;
framehit=0;
AttackStarted=false;
/*
Hit is a simple boolean we will use when applying hit effects. 
Next, hitStun is how long the enemy will remain in hitStun after being hit. 
Finally, hitBy will be the ID of the object that hit them.
*/
hit = false;
hitStun = 0;
hitBy = -1;

//hitbox
hitbox = -1;

// Object starts with frame 0. Variable used in hurtbox/hitbox code
frameSpeed = 1;
frame = 0;

//states (states for player actions like -> attack, jump etc)
currentState = 0; // käytetään esim HitState() skripti funktiossa
lastState = 0; // en tiiä mihin tätä käytetää.

//tile map info
var l1, l2;
l1 = layer_get_id("collissionBack");
l2 = layer_get_id("collission");
	
tilemap1 = layer_tilemap_get_id(l1);
tilemap2 = layer_tilemap_get_id(l2);


// Health bar info
pc=0;
hp=0;
max_hp=100;