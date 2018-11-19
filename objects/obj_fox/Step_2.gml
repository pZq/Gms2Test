/*
Alright, so this little chunk of code makes sure the hurtbox is following our player around. 
Using with and other is probably a new concept for you, so let me explain. When you use with 
followed by an object name (or specific object ID) the code following runs as if that object were running it. 
So when we say with(hurtbox) we are updating the x and y position from that particular oHurtbox 
object that we have stored in our hurtbox variable.

Since we are using with we can also use other. When using other in this context, 
it is referring back to the original object this code is running from. 
In this case, that is our oPlayer object.
*/
//hurtbox

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
	//show_debug_message("hurtbox owner "+string(hurtbox.owner));
	//show_debug_message("hitby owner "+string(hitBy.owner));
	if (hitBy.owner.object_index != obj_fox){
		hp+= -33; // joka osumalla helaa miinuksen verran
	}
	
	if (hp <= 0) {
		//hitBy.owner.speed=1;
		//hitBy.owner.image_speed=1;
		instance_destroy(hurtbox);
		alarm[0]=room_speed*3;
	}
	
} 

if(hp <= 0 && ShakeHit){
	ShakeHit=false;
	instance_destroy(hurtbox);
	alarm[0]=room_speed*3;
}

// Common function related to hitbox and hurtbox colliding. Can be used in all characters i suppose !?
CommonHitBox();


/*
if (!instance_exists(skeleInstance.hurtbox)) {
	speed=1;
	image_speed=1;
}
*/

//animation 
//FrameReset(); 



