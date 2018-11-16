// Draw self = draf obj_fox
draw_self();
dx = x-7;
dy = y-25;
// this draws the health bar
pc = (hp / max_hp) * 100;

// If soldier get soldierDies=true value from this object step event. Lets hide healthbar
if (CharacterDies) {
	draw_healthbar(0, 0, 0, 0, pc, c_black, c_red, c_lime, 0, false, false)
}
else
	draw_healthbar(dx, dy, dx+20, dy+2, pc, c_black, c_red, c_lime, 0, true, true)