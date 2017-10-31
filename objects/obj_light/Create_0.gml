/// @description Creates surfaces for lighting

//set surface to screen size
surf = surface_create(room_width, room_height);

//clean surface and set to black
surface_set_target(surf);
draw_clear_alpha(c_black,0);

//reset surface to app surface
surface_reset_target();
