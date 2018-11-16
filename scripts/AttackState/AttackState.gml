/// @function AttackState()

/*
xSpeed = 0;

if(frame > sprite_get_number(sprite) - 1){
    currentState = states.normal;
}
*/

//create hitbox on the right frame (frame calculated in FrameCounter function)
// Facing should be 1 or -1 depending is the object walking to right or left
/*
/*
We are checking to see if we are on the right frame, and that we don’t already have a hitbox. 
If so, we create the hitbox using our hitbox_create script. When creating the hitbox, we need to 
multiply the horizontal values (both scale and offset) by the direction the character is facing. 
This ensures that the hitbox is always lined up with the orientation of the character.
Then we set our eight frames of life, followed by horizontal knockback and hitstun. 
If you run the game and start attacking, you should see the hitbox appear and disappear as intended. 
Now we need to make it hit something!
A quick word on hitbox play balancing. The larger the hitbox, the more powerful it is. 
Same thing with life. The longer the hitbox is active, the stronger it is. Giant, lingering hitboxes 
are always very strong in fighting and action games. Keep this in mind when designing your attacks!
*/
/*
if(frame == 2 && hitbox == -1){
    hitbox = HitboxCreate(33 * facing,24,-9 * facing,0,8,3 * facing,45);
}
*/
hitbox = HitboxCreate(33 * facing,24,-9 * facing,0,8,3 * facing,45);