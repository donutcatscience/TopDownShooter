/// @description handel inputs

//movement
inputLeft = max(keyboard_check(ord("A")), 0); 
inputRight= max(keyboard_check(ord("D")), 0);
inputUp = max(keyboard_check(ord("W")), 0);
inputDown = max(keyboard_check(ord("S")), 0);

//weapon control
inputReload = max(keyboard_check_pressed(ord("R")),0);
inputKnife = max(keyboard_check(ord("1")),0);
inputHandgun = max(keyboard_check(ord("2")),0);
inputShotgun = max(keyboard_check(ord("3")),0);
inputRifle = max(keyboard_check(ord("4")),0);

//attack
inputShoot = mouse_check_button_pressed(mb_left);
inputMelee = mouse_check_button_pressed(mb_right);


//checks for weapon swapping and state changing
if(!instance_exists(obj_endless_game_controller)){
	if (inputKnife = true) && (currentReload = 0) { //change inputKnife = 1?
		playerCurrentTorso = spr_player_knife_walk;
		if (currentState != player_state.knife) audio_play_sound(snd_changeWeapon,3,false);
		currentState = player_state.knife;
	};
	if (inputHandgun = true) && (currentReload = 0) {
		playerCurrentTorso = spr_player_handgun_walk;
		if (currentState != player_state.handgun) audio_play_sound(snd_changeWeapon,3,false);
		currentState = player_state.handgun;
	};
	if (inputShotgun = true) && (currentReload = 0) {
		playerCurrentTorso = spr_player_shotgun_walk;
		if (currentState != player_state.shotgun) audio_play_sound(snd_changeWeapon,3,false);
		currentState = player_state.shotgun;
	};
	if (inputRifle = true) && (currentReload = 0) {
		playerCurrentTorso = spr_player_rifle_walk;
		if (currentState != player_state.rifle) audio_play_sound(snd_changeWeapon,3,false);
		currentState = player_state.rifle;
	};
}
else{
	if (inputKnife = true) && (currentReload = 0) { //change inputKnife = 1?
		playerCurrentTorso = spr_player_knife_walk;
		if (currentState != player_state.knife) audio_play_sound(snd_changeWeapon,3,false);
		currentState = player_state.knife;
	};
	if (inputHandgun = true) && (currentReload = 0) {
		playerCurrentTorso = spr_player_handgun_walk;
		if (currentState != player_state.handgun) audio_play_sound(snd_changeWeapon,3,false);
		currentState = player_state.handgun;
	};
	if (inputShotgun = true) && (currentReload = 0) && (obj_endless_game_controller.bShotgunUnlocked) {
		playerCurrentTorso = spr_player_shotgun_walk;
		if (currentState != player_state.shotgun) audio_play_sound(snd_changeWeapon,3,false);
		currentState = player_state.shotgun;
	};
	if (inputRifle = true) && (currentReload = 0) && (obj_endless_game_controller.bRifleUnlocked) {
		playerCurrentTorso = spr_player_rifle_walk;
		if (currentState != player_state.rifle) audio_play_sound(snd_changeWeapon,3,false);
		currentState = player_state.rifle;
	};	
}


scr_collisionAndMove();