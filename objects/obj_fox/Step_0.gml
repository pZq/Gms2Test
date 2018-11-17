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
		//instance_destroy();		
	}
}	

skeleInstance = instance_find(obj_enemySkeleton, counter);
if (instance_exists(skeleInstance) && x >= (skeleInstance.x-20) && x <= (skeleInstance.x) && frame < 30) {
	
	speed = 0;
	image_speed = 0;
	AttackState();
	if (frame == 29) {
		
		with (skeleInstance){
			hp += -33;
			if (hp<=0) {
				other.counter++;
				other.speed = 1;
				other.image_speed = 1;
				instance_destroy(hurtbox);
				alarm[0]=room_speed*3;
				
			}
			
		}
		
	}
}



