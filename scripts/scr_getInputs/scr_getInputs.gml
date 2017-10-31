/// @description handel inputs

//movement
inputLeft = max(keyboard_check(ord("A")), 0); 
inputRight= max(keyboard_check(ord("D")), 0);
inputUp = max(keyboard_check(ord("W")), 0);
inputDown = max(keyboard_check(ord("S")), 0);

//weapon control
inputReload = max(keyboard_check(ord("R")),0);
inputKnife = max(keyboard_check(ord("1")),0);
inputHandgun = max(keyboard_check(ord("2")),0);
inputShotgun = max(keyboard_check(ord("3")),0);

//attack
inputShoot = mouse_check_button_pressed(mb_left);
inputMelee = mouse_check_button_pressed(mb_right);


//checks for weapon swapping
if (inputKnife = 1) {
	playerCurrentTorso = spr_player_knife_walk;
	if (currentState != player_state.knife) audio_play_sound(snd_changeWeapon,3,false);
	currentState = player_state.knife;
};
if (inputHandgun = 1) {
	playerCurrentTorso = spr_player_handgun_walk;
	if (currentState != player_state.handgun) audio_play_sound(snd_changeWeapon,3,false);
	currentState = player_state.handgun;
};
if (inputShotgun = 1) {
	playerCurrentTorso = spr_player_shotgun_walk;
	if (currentState != player_state.shotgun) audio_play_sound(snd_changeWeapon,3,false);
	currentState = player_state.shotgun;
};

scr_collisionAndMove();