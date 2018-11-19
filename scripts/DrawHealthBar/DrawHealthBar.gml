/// @function DrawHealthBar(CharacterDies)
/// @param {bool} CharacterDies -> tells if character is dead or not
/// @param {real} offsetX
/// @param {real} offsetY

CharDied = argument0;
offsetX = argument1;
offsetY = argument2;


dx = x-offsetX;
dy = y-offsetY;
// this draws the health bar
pc = (hp / max_hp) * 100;

if (CharDied) {
	draw_healthbar(0, 0, 0, 0, pc, c_black, c_red, c_lime, 0, false, false)
}
else
	draw_healthbar(dx, dy, dx+20, dy+2, pc, c_black, c_red, c_lime, 0, true, true)