//Controlls zombie attacking

if (!instance_exists(obj_player)){
	currentState = zombie_state.wonder;
}
else if (instance_exists(obj_player)) {
	box_left = (x - (obj_player.sprite_width));   //turn to var after game is finished
	box_right = (x + (obj_player.sprite_width));
	
	box_top = (y - (obj_player.sprite_height));
	box_bottom = (y + (obj_player.sprite_height));
	
	if (collision_rectangle(box_left,box_top,box_right,box_bottom,obj_player,false,true)) {
		if (meleeTimer >= 30) {
			currentTorso = spr_zombie_melee;
			meleeTimer = 0;
			attackFrame = 0;
			obj_player.currentHealth = obj_player.currentHealth - meleeDamage;
		}
	}	
	else {
		speed = 1;
		currentState = zombie_state.walk;
	}
}
