//handles enemies movement

if (place_meeting(x+obj_player.sprite_width,y+obj_player.sprite_height,obj_player)) {
	speed = 0;
	currentState = zombie_state.melee;
}
else {
	currentTorso = spr_zombie_walk;
	direction = point_direction(x,y,obj_player.x,obj_player.y);
	image_angle = point_direction(x,y,obj_player.x,obj_player.y);
}




