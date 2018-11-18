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
	//if (instance_exists(skeleInstance) && x >= (skeleInstance.x-20) && x <= (skeleInstance.x+20) && frame < 30) {
	if (instance_exists(skeleInstance) && x >= (skeleInstance.x-20) && x <= (skeleInstance.x+20) &&  frame < 30) {
	
		speed = 0;
		//image_speed = 0;
		if (frame == 29 && !CharacterDies && instance_exists(skeleInstance.hurtbox)){
			frameathit = frame;
			image_index = 0;
			AttackState();
			sprite_index = spr_testiukko1hit;
		}
		
		//	AttackState();
			
		//if (frame == frameathit + 50 && hp>0)
		//	image_index = 0;
		//	sprite_index = spr_testiukko1idle;

		
	} 
	if (instance_exists(obj_enemySkeleton) && !instance_exists(skeleInstance.hurtbox)) {
		sprite_index = spr_testiukko11walk;
		speed = 1;
		image_speed = 1;
	}
}




