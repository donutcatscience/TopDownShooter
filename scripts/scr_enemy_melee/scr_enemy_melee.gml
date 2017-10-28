//Controlls zombie attacking

if (place_meeting(x+obj_player.sprite_width,y+obj_player.sprite_height,obj_player)) {
	if (meleeTimer >= 30) {
		currentTorso = spr_zombie_melee;
		meleeTimer = 0;
	}
}
else {
	speed = 1;
	currentState = zombie_state.walk;
}