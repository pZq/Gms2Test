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
for (i=array_length_1d(global.InstanceArray);i>=0;i--) {
	ObjInstance = instance_find(obj_fox, i);
	with (ObjInstance) {
		for (i=array_length_1d(global.InstanceSkeletonArray);i>=0;i--) {
			skeleInstance = instance_find(obj_enemySkeleton, i);
			if (instance_exists(skeleInstance) && x >= (skeleInstance.x-20) && x <= (skeleInstance.x) && frame < 30) {
						speed = 0;
						image_speed = 0;
						AttackState();
						if (frame == 29) {
							with (skeleInstance)
								hp += -20;
						}
			}
		}
	}
}

//for (i=array_length_1d(global.InstanceSkeletonArray);i>=0;i--) {
	
	if (instance_exists(skeleInstance) && skeleInstance.hp <= 0) {
				speed = 1;
				image_speed = 1;
				//instance_destroy(obj_enemySkeleton);
	} 
//}

