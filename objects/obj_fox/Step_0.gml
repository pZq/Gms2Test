// counting frames
FrameCounter();

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
	}
}	

if (hp>0) {
	skeleInstance = instance_nearest(x,y,obj_enemySkeleton);
	if (instance_exists(skeleInstance) && x >= (skeleInstance.x-20) && x <= (skeleInstance.x+20)) {
	
		//if (frame == 1 && !CharacterDies && instance_exists(skeleInstance.hurtbox)){
		if (!AttackStarted && !CharacterDies && instance_exists(skeleInstance.hurtbox)){
			framehit = frame;
			image_index = -1;
			sprite_index = spr_testiukko1hit;
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
		
		//if (frame == frameathit + 50 && hp>0)
		//	image_index = 0;
		//	sprite_index = spr_testiukko1idle;

		
	} 
	if (instance_exists(obj_enemySkeleton) && !instance_exists(skeleInstance.hurtbox)) {
		sprite_index = spr_testiukko11walk;
		speed = 1;
		image_speed = 1;
	}
	
	/*
	OwnNearestInstance = instance_nearest(x,y,obj_fox);
	if (instance_exists(OwnNearestInstance) && x >= (OwnNearestInstance.x-20) && x <= (OwnNearestInstance.x+20)) {
		speed = 0;
		image_speed = 0;
	} else {
		speed = 1;
		image_speed = 1;
	}
	*/
}




