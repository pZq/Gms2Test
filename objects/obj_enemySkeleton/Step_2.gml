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
	show_message("osuma_saatana");
}

//hitbox
if(hitbox != -1){
    with(hitbox){
        x = other.x + xOffset;
        y = other.y + yOffset;
    }
}


//animation 
FrameReset(); 