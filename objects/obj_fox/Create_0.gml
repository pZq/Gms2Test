// scripti saatu täältä https://www.youtube.com/watch?time_continue=487&v=7NHJ6A34V6I
//scripti toimii nyt ilman physiikkaa. eli otin sen pois roomin asetuksista
// tähän voisi vielä lisätä hyppykoodin mutta sitä en vielä laittanut

CharacterInitialize(FacingRight);

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
hurtbox = HurtboxCreate(18,24,-10,0);

// move to right
move_towards_point(x+1, y, 1);

global.InstanceHitboxArray[0] = pointer_null;

counter = 0;

// enemy info
objInstance = instance_nearest(x,y,obj_enemySkeleton);
ShakeHit = false;