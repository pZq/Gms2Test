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

if (hp>0) {
	objInstance = instance_nearest(x,y,obj_fox);
	if (instance_exists(objInstance) && x >= (objInstance.x-20) && x <= (objInstance.x+20)) {
	
		//if (frame == 1 && !CharacterDies && instance_exists(skeleInstance.hurtbox)){
		if (!AttackStarted && !CharacterDies && instance_exists(objInstance.hurtbox)){
			framehit = frame;
			image_index = -1;
			sprite_index = spr_skeletonAttack;
			snd = audio_play_sound (choose (snd_swordHit1,snd_swordHit2,snd_swordHit3,snd_swordHit4,snd_swordHit5,snd_swordHit6,snd_swordHit7),0,false)	
			AttackStarted = true;
		}
		
		// ukkeli attack sprite is 7 fps, game gps = 60 -> 60/7 = 8.57
		// Ukkeli attack max reach at fram 3 so -> 3x8.57 = 25.7
		// Then in if above, the animation is started on frame 1 so 25.7 + 1 = 26.7 which is ~ 27
		if ((framehit + 27) < 60) {
			if (frame == framehit +27) {
				AttackState();
				AttackStarted = false;
			}
		} else {
			if (frame == (framehit+27)-60){
				AttackState();
				AttackStarted = false;
			}
		}
	} 
	if (instance_exists(obj_fox) && !instance_exists(objInstance.hurtbox)) {
		sprite_index = spr_skeletonWalk;
		speed = 1*facing;
		image_speed = 1;
	}
}


					
