/// @description Draws Game Over 

draw_sprite(spr_congrats_title,0,960,540);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

if (room_get_name(room) = "rm_prototype05"){
	draw_text(960,630,"(Press Enter To Return To Main Menu)");
}
else draw_text(960,630,"(Press Enter To Start The Next Level)");
draw_set_halign(fa_left);
draw_set_valign(fa_left);