//handles enemies movement

if (!instance_exists(obj_player)){
	currentState = zombie_state.wonder;
}
else if (instance_exists(obj_player)) {
	box_left = (x - (obj_player.sprite_width));  //turn to var after game is finished
	box_right = (x + (obj_player.sprite_width));
	
	box_top = (y - (obj_player.sprite_height));
	box_bottom = (y + (obj_player.sprite_height));
	
	if (collision_rectangle(box_left,box_top,box_right,box_bottom,obj_player,false,true)) {
		speed = 0;
		currentState = zombie_state.melee;
	}
	else {
		currentTorso = spr_zombie_walk;
		direction = point_direction(x,y,obj_player.x,obj_player.y);
		image_angle = point_direction(x,y,obj_player.x,obj_player.y);
	}
}



