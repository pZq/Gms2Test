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
	show_debug_message("hurtbox owner "+string(hurtbox.owner));
	show_debug_message("hitby owner "+string(hitBy.owner));
	hp+= -33; // joka osumalla helaa miinuksen verran
	if (hp <= 0) {
		instance_destroy(hurtbox);
		hitBy.owner.speed=1;
		hitBy.owner.image_speed=1;
		alarm[0]=room_speed*3;
	}
}

//hitbox
if(hitbox != -1){
    with(hitbox){
        x = other.x + xOffset;
        y = other.y + yOffset;
    }
}


//animation 
//FrameReset(); 