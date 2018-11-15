/*
Like with our hurtbox, we need to set an owner and offset. 
However unlike a hurtbox, a hitbox doesn’t exist at all times. 
It only exists during an attack. The life variable will be used to determine 
how many frames the hitbox will exist and remain active. 
xHit and yHit are our knockback variables. 
hitStun determines how long the character we hit is put into hit stun. 
More on that below. Finally, the ignore and ignoreList variables will be used to ensure 
we don’t hit a character too many times. You’ll see how that works in a bit.
Hit Stun is how long, in frames, that a character is stunned after being hit. 
If a player has been stunned, they cannot do anything!
This is the cornerstone of performing combos in a fighting game. 
If your next attack starts up before your opponent recovers from hit stun, you can hit them again!
*/
image_alpha = 0.5;
owner = -1;
xOffset = 0;
yOffset = 0;
life = 0;
xHit = 0;
yHit = 0;
hitStun = 60;
ignore = false;
ignoreList = ds_list_create();