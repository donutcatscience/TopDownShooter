//Controlls zombie attacking

if (!instance_exists(obj_player)){
	currentState = zombie_state.wonder; //zombies wonder if player dies
}
else if (instance_exists(obj_player)) {
	if (collision_rectangle(box_left,box_top,box_right,box_bottom,obj_player,false,true)) {
		path_end(); //stops pathing and attacks
		if (meleeTimer >= 30) { //controls melee swing timer
			currentTorso = spr_zombie_melee;
			meleeTimer = 0;
			attackFrame = 0;
			obj_player.flash = 1 //controls shader to flash sprite white
			var playerBloodX = (obj_player.x + random_range(5,15)); //throws blood on the floor
			var playerBloodY = (obj_player.y + random_range(5,15));
			instance_create_layer(playerBloodX,playerBloodY,"Blood",obj_playerBloodSplatter);
			obj_player.currentHealth = obj_player.currentHealth - meleeDamage;
			var playerHit = choose(snd_player_hit01,snd_player_hit02);
			audio_play_sound(playerHit,03,false);
		}
	}	
	else {
		currentState = zombie_state.walk; //state change to walk if collision ends
	}
}
