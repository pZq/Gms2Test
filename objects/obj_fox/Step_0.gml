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
script_execute(ObjectCollision, 
					move_speed, 
					v_speed, 
					grav, 
					tilemap, 
					sprite_bbox_bottom, 
					sprite_bbox_top, 
					sprite_bbox_right, 
					sprite_bbox_left
				);
