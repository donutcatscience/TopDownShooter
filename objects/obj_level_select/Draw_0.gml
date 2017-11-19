/// @description Insert description here
// You can write your code in this editor

if (room_get_name(room) = "rm_level_selector") {
	draw_sprite_ext(spr_level_select,1,x,y,5,5,0,c_white,1);
	draw_set_font(fnt_bullet);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(room_width/2,205,"Press Room Number");
	
	draw_set_halign(fa_left);
	draw_text(50,400,"1) rm_prototype01");
	draw_text(50,440,"2) rm_prototype02");
	draw_text(50,480,"3) rm_prototype03");
}
else draw_sprite_ext(spr_level_select,1,x,y,2,2,0,c_white,1);