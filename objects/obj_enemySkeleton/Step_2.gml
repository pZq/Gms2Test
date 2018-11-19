with(hurtbox){
    x = other.x + xOffset;
    y = other.y + yOffset;
}

//get hit
if(hit){
	xSpeed = hitBy.xHit;
    hitStun = hitBy.hitStun;
    facing = hitBy.owner.facing * -1;
    hit = false;
    currentState = states.hit;
	if (hitBy.owner.object_index != obj_enemySkeleton) {
		hp+= -33; // joka osumalla helaa miinuksen verran
	}
	
	// this must be here. if hitBy.owner object calls are outside this if hit statement. 
	// game will crash when skeleton dies...
	if (hp <= 0) {
		instance_destroy(hurtbox);
		hitBy.owner.speed=1;
		hitBy.owner.image_speed=1;
		alarm[0]=room_speed*3;
	}
}

if(hitbox != -1){
    with(hitbox){
        x = other.x + xOffset;
        y = other.y + yOffset;

        //check to see if the hurtbox is touching your hitbox        
        with(obj_hurtbox){
            if(place_meeting(x,y,other) && other.owner != owner){
                //ignore check
                //checking collision from the hitbox object
                with(other){
                    //check to see if your target is on the ignore list
                    //if it is on the ignore list, dont hit it again
                    for(i = 0; i < ds_list_size(ignoreList); i ++){
                        if(ignoreList[|i] = other.owner){
                            ignore = true;
                            break;
                        }
                    }

                    //if it is NOT on the ignore list, hit it, and add it to
                    //the ignore list
                    if(!ignore){
                        other.owner.hit = true;
                        other.owner.hitBy = id;
                        ds_list_add(ignoreList,other.owner);
                    }
                }
            }
        }
    }
}
/*
//hitbox
if(hitbox != -1){
    with(hitbox){
        x = other.x + xOffset;
        y = other.y + yOffset;
    }
}
*/


//animation 
//FrameReset(); 