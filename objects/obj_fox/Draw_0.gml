// Draw self = draf obj_fox
draw_self();
dx = x+55;
dy = y+30;
// this draws the health bar
pc = (hp / max_hp) * 100;
draw_healthbar(dx, dy, dx+20, dy+2, pc, c_black, c_red, c_lime, 0, true, true)