//handles enemies movement

if (!instance_exists(obj_player)){ //zombies wonder if player dies
	currentState = zombie_state.wonder;
}
else if (instance_exists(obj_player)) {
	if (collision_rectangle(box_left,box_top,box_right,box_bottom,obj_player,false,true)) {
		path_end(); //stops pathing and moves to attack state
		speed = 0;
		currentState = zombie_state.melee;
	}
	else {
		currentTorso = spr_zombie_walk; //sets torso to walk and starts pathing script
		scr_enemyCollisionAndMove();
	}
}



