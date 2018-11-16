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

/*
Using the hurtbox_create script we just made, we are able to set the scale and 
offset really easily, and store the ID of the oHurtbox object in a variable that the oPlayer object can use. 
The numbers used in the script are measured in pixels. 
The hurtbox we are creating is 18 pixels wide, 24 pixels tall, offset 9 pixels to the left of 
the player sprite, and offset 24 pixels above the player sprite. 
If you run the game now, you will notice that your hurtbox isn’t following your character around, 
so let's fix that before moving on. Open the end step event in your oPlayer object and add the following code. 
If you are following along from previous entries in this series, 
I added mine right below the animation code.
*/
//hurtbox
hurtbox = HurtboxCreate(18,24,-6,-10);

//hitbox
hitbox = -1;

// Object starts with frame 0. Variable used in hurtbox/hitbox code
frameSpeed = 1;
frame = 0;

/*
Hit is a simple boolean we will use when applying hit effects. 
Next, hitStun is how long the enemy will remain in hitStun after being hit. 
Finally, hitBy will be the ID of the object that hit them.
*/
hit = false;
hitStun = 0;
hitBy = -1;

//states (states for actions like -> attack, jump etc)
currentState = 0; // käytetään esim HitState() skripti funktiossa
lastState = 0; // en tiiä mihin tätä käytetää.

//tile map info

var l = layer_get_id("collission") ;
tilemap = layer_tilemap_get_id(l) ;

//sprite info
sprite = sprite_index;
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);

pc=0;
hp=50;
max_hp=100;

facing=-1;
image_xscale = facing;
//move_towards_point(x-1, y, 0);
