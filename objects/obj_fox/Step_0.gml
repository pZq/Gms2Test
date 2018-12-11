// counting frames
FrameCounter();

if (image_yscale==0.6) 
	tilemap = tilemap1;
else
	tilemap = tilemap2;

ObjectCollision(move_speed, v_speed, grav, tilemap, sprite_bbox_bottom, sprite_bbox_top, sprite_bbox_right, sprite_bbox_left);
	

// if soldier dies -> play sound, play death animation...
if (hp <= 0 && !CharacterDies) { // this if  means -> if healthpoints below or equal 0 -> stop object instance movement
	CharacterDies=true;
	//speed=0;
	move_speed = 0;
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
	objInstance = instance_nearest(x,y,obj_enemySkeleton);
	//if (instance_exists(objInstance) && x >= (objInstance.x-20) && x <= (objInstance.x+20)) {
	if (instance_exists(objInstance) && place_meeting(x+25,y, objInstance.hurtbox)) {
	
		//if (frame == 1 && !CharacterDies && instance_exists(objInstance.hurtbox)){
		if (!AttackStarted && !CharacterDies && instance_exists(objInstance.hurtbox)){
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
	} 
}
