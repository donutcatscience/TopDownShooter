//handles enemies movement

if (!instance_exists(obj_player)){
	currentState = zombie_state.wonder;
}
else if (instance_exists(obj_player)) {
	if (collision_rectangle(box_left,box_top,box_right,box_bottom,obj_player,false,true)) {
		speed = 0;
		currentState = zombie_state.melee;
	}
	else {
		currentTorso = spr_zombie_walk;
		scr_enemyCollisionAndMove();
	}
}



