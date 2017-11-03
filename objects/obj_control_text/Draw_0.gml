/// @description Draws control text to screen

draw_set_font(fnt_bullet);
draw_set_halign(fa_center);
draw_set_valign(fa_center);


draw_text(960,420,"W,A,S,D - Move");
draw_text(960,460,"1 - Knife");
draw_text(960,500,"2 - Handgun");
draw_text(960,540,"3 - Shotgun");
draw_text(960,580,"R - Reload");
draw_text(960,620,"Left Mouse - Shoot");
draw_text(960,660,"Right Mouse - Melee");

draw_text(960,740,"(Press Enter)");

draw_set_halign(fa_left);
draw_set_valign(fa_left);