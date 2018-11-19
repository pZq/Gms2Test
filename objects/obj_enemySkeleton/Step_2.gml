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

// Common function related to hitbox and hurtbox colliding. Can be used in all characters i suppose !?
CommonHitBox();

//animation 
//FrameReset(); 