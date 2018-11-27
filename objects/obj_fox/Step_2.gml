//hurtbox
HurtboxFollow();

//get hit
if(hit){
	HitInitialize();

	IfHitByLooseHP(self, 0); // this reduces HP if any other than fox object hits.
	IfHitByLooseHP(obj_enemySkeleton, -10); 
	
	if (hp <= 0) {
		//hitBy.owner.speed=1;
		hitBy.owner.move_speed = 1;
		hitBy.owner.image_speed=1;
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



