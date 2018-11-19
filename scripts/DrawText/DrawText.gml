/// @function DrawText(text)
/// @param {string} text text to write on screen

text = argument0;

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(fnt_hud);
draw_text(300, 460, text);