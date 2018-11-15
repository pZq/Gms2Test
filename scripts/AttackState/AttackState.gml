/// @function AttackState(image_xscale,image_yscale,xOffset,yOffset,life,xHit,hitStun)
/// @description
/// @param {real} image_xscale
/// @param {real} image_yscale
/// @param {real} xOffset
/// @param {real} yOffset
/// @param {real} life How long the hitbox (attack) will last
/// @param {real} xHit is our knockback variable
/// @param {real} hitStun How long "enemy" will be stunned after hit

xSpeed = 0;

if(frame > sprite_get_number(sprite) - 1){
    currentState = states.normal;
}

//create hitbox on the right frame
if(frame == 3 && hitbox == -1){
    hitbox = HitboxCreate(20 * facing,12,-3 * facing,-16,8,3 * facing,45);
}