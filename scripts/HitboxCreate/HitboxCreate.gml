/// @function HurtboxCreate(image_xscale,image_yscale,xOffset,yOffset,life,xHit,hitStun)
/// @description
/// @param {real} image_xscale
/// @param {real} image_yscale
/// @param {real} xOffset
/// @param {real} yOffset
/// @param {real} life How long the hitbox (attack) will last
/// @param {real} xHit is our knockback variable
/// @param {real} hitStun How long "enemy" will be stunned after hit

_hitbox = instance_create_layer(x, y, "instances", obj_hitbox);
global.InstanceHitboxArray = ArrayAdd(global.InstanceHitboxArray, _hitbox);
_hitbox.owner = id;
_hitbox.image_xscale = argument0;
_hitbox.image_yscale = argument1;
_hitbox.xOffset = argument2;
_hitbox.yOffset = argument3;
_hitbox.life = argument4;
_hitbox.xHit = argument5;
_hitbox.hitStun = argument6;

return _hitbox;