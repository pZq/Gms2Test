// counting frames
FrameCounter(); // lets not yet create a hitbox

ObjectCollision(move_speed, v_speed, grav, tilemap, sprite_bbox_bottom, sprite_bbox_top, sprite_bbox_right, sprite_bbox_left);

// if soldier dies -> play sound, play death animation...
if (hp <= 0 && !CharacterDies) { // this if  means -> if healthpoints below or equal 0 -> stop object instance movement
	CharacterDies=true;
	speed=0;
	image_speed = 0;
	
	snd = audio_play_sound(snd_skeletonDeath,0,false);
	audio_sound_set_track_position(snd, 0.5);
		
	sprite_index = spr_skeletonDeath;
	image_speed = 1;
	
}

if (image_speed > 0 && CharacterDies)
{
	if (image_index > image_number - 1) {
		image_speed = 0;
		//instance_destroy();		
	}
}	




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

//create hitbox on the right frame (frame calculated in FrameCounter function)
// Facing should be 1 or -1 depending is the object walking to right or left
/*
soldierInst = instance_nearest(x,y,obj_fox);
if (instance_exists(soldierInst) && x >= (soldierInst.x+20) && x <= (soldierInst.x) && frame < 30) {
    

}
*/

/*
if (hp>0) {
	skeleInstance = instance_nearest(x,y,obj_enemySkeleton);
	if (instance_exists(skeleInstance) && x >= (skeleInstance.x-20) && x <= (skeleInstance.x) && frame < 30) {
	
		speed = 0;
		image_speed = 0;
		if (frame == 29 && !CharacterDies)
			AttackState();

	}
}
*/



if (frame == 1 && hp>0) {
		frameathit = frame;
		image_index = 0;
		sprite_index = spr_skeletonAttack;
		snd = audio_play_sound (choose (snd_axeHit1,snd_axeHit2),0,false)
}
if (frame == frameathit + 45 && hp > 0) {
	AttackState();
}
if (frame == frameathit + 50 && hp>0) {
		
		image_index = 0;
		sprite_index = spr_skeletonIdle;
}




	
/*
if(frame == 2 && hitbox == -1){
	//hurtbox = HurtboxCreate(18,24,55,55);
    hitbox = HitboxCreate(33 * facing,24,55 * facing,55,8,3 * facing,45);
}
*/


					
