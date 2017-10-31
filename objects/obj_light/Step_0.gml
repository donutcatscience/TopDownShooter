/// @description control lighting

if (surface_exists(surf)){
	surface_set_target(surf);
	
	//set dark overlay
	draw_set_color(c_black);
	draw_set_alpha(1); //see though darkness
	draw_rectangle(0,0,room_width,room_height,false); //darkness
	
	//set circles
	gpu_set_blendmode(bm_subtract);
	
	//outer circle
	draw_set_color(c_black);
	draw_set_alpha(0.2);
	
	//draw circles
	with (obj_player) {
		draw_circle(x + random_range (-1,1), y + random_range(-1,1), 
		275 + random_range(-1,1),false);
	}
	
	//inner circle
	draw_set_color(c_white);
	draw_set_alpha(.8);
	
	with (obj_player) {
		draw_circle(x + random_range (-1,1), y + random_range(-1,1), 
		150 + random_range(-1,1),false);
	}
	
	//reset the draws
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
}
else {
	surf = surface_create(room_width,room_height);
	surface_set_target(surf);
	draw_clear_alpha(c_black,0);
	surface_reset_target();
}