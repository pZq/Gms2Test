/// @function HitByHPloss(object, hploss)
/// @param {object} object What pbject not take hits from
/// @param {int} hploss How much HP is lost on hit

object = argument0;
hploss = argument1;

if (hitBy.owner.object_index == object) {
		hp+= hploss; // joka osumalla helaa miinuksen verran
}