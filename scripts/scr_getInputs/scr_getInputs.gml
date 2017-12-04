/// @description handel inputs

//movement
if(gamepad_is_connected(0)){
	//show_debug_message("horiz value" + string(gamepad_axis_value(0, gp_axisrh)));
	//show_debug_message("vert value" + string(gamepad_axis_value(0, gp_axislh)));
	var currentHoriz = gamepad_axis_value(0, gp_axisrh);
	var currentVert = gamepad_axis_value(0, gp_axisrv);
	deadzone_limit = .10;
	if currentVert >= -deadzone_limit && currentVert<= deadzone_limit && currentHoriz >= -deadzone_limit && currentHoriz <= deadzone_limit
	{
		image_angle = direction;
	}
	else
	{
		obj_player.inputHoriz = currentHoriz;
		obj_player.inputVert = currentVert;
	}
	
	inputLeft = round(gamepad_axis_value(0, gp_axislh)) * -1;
	inputRight= round(gamepad_axis_value(0, gp_axislh));
	inputUp = round(gamepad_axis_value(0, gp_axislv)) * -1;
	inputDown = round(gamepad_axis_value(0, gp_axislv));
	
	inputReload = gamepad_button_check_pressed(0, gp_face3);
	inputKnife = gamepad_button_check_pressed(0, gp_padl);
	inputHandgun = gamepad_button_check_pressed(0, gp_padu);
	inputShotgun = gamepad_button_check_pressed(0, gp_padr);
	inputRifle = gamepad_button_check_pressed(0, gp_padd);

	//attack
	inputShoot = gamepad_button_check_pressed(0, gp_shoulderrb);
	inputMelee = gamepad_button_check_pressed(0, gp_stickr);
}else{
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
}




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