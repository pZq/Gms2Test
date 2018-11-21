//hurtbox
HurtboxFollow();

//get hit
if(hit){
	HitInitialize();
	
	// so here if "allies" hits -> no HP loss is taken
	IfHitByLooseHP(self, 0); 
	IfHitByLooseHP(obj_fox, -20); 
	
	// this must be here. if hitBy.owner object calls are outside this if hit statement. 
	// game will crash when skeleton dies...
	if (hp <= 0) {
		instance_destroy(hurtbox);
		hitBy.owner.speed=1;
		hitBy.owner.image_speed=1;
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

//animation 
//FrameReset(); 