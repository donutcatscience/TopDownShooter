/// @description draws weapon GUI

//draw handgun bullets remaining
draw_sprite_ext(spr_handgun_ammo_gui,0,25,40,0.5,0.5,0,c_white,1);
draw_set_font(fnt_bullet);
draw_text(45,35,obj_player.handgun_bullets_remaining);

//draw shotgun bullets remaining
draw_sprite_ext(spr_shotgun_ammo_gui,0,105,40,1,1,0,c_white,1);
draw_text(130,35,obj_player.shotgun_bullets_remaining);

//draw keys collected
draw_sprite_ext(spr_keys,0,205,40,.8,.8,0,c_white,1);
draw_text(255,35,string(obj_player.playerKeys) + "/6");