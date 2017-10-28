//Controlls zombie attacking

if (!instance_exists(obj_player)){
	currentState = zombie_state.wonder;
}
else if (instance_exists(obj_player)){
	if (place_meeting(x+obj_player.sprite_width,y+obj_player.sprite_height,obj_player)) {
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
