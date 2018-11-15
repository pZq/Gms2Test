/*
Script executelle annetaan alla olevan listan mukaset arvot että skripti osaa
käyttää niitä:

move_speed = argument0;
v_speed = argument1;
grav = argument2;
tilemap = argument3;
sprite_bbox_bottom = argument4;
sprite_bbox_top = argument5;
sprite_bbox_right = argument6;
sprite_bbox_left = argument7;

*/
ObjectCollision(move_speed, v_speed, grav, tilemap, sprite_bbox_bottom, sprite_bbox_top, sprite_bbox_right, sprite_bbox_left);

// if soldier dies -> play sound, play death animation...
if (hp <= 0 && !CharacterDies) { // this if  means -> if healthpoints below or equal 0 -> stop object instance movement
	CharacterDies=true;
	speed=0;
	image_speed = 0;
	
	snd = audio_play_sound (choose (snd_maleDeath,snd_maleDeath2,snd_explosion),0,false);
	audio_sound_set_track_position(snd, 0.5);
		
	sprite_index = spr_testiukko1death;
	image_speed = 1;
	
}

if (image_speed > 0 && CharacterDies)
{
	if (image_index > image_number - 1) {
		image_speed = 0;
		//instance_destroy();		
	}
}	

// Start counting frames
FrameCounter();


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

if(frame == 2 && hitbox == -1){
	//hurtbox = HurtboxCreate(18,24,55,55);
    hitbox = HitboxCreate(33 * facing,24,55 * facing,55,8,3 * facing,45);
}

