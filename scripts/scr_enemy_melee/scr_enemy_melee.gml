//Controlls zombie attacking

if (!instance_exists(obj_player)){
	currentState = zombie_state.wonder;
}
else if (instance_exists(obj_player)) {
	if (collision_rectangle(box_left,box_top,box_right,box_bottom,obj_player,false,true)) {
		if (meleeTimer >= 30) {
			currentTorso = spr_zombie_melee;
			meleeTimer = 0;
			attackFrame = 0;
			obj_player.currentHealth = obj_player.currentHealth - meleeDamage;
		}
	}	
	else {
		currentState = zombie_state.walk;
	}
}
