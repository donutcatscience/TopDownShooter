///// @description handel inputs

box_left = (x - sprite_width);  //turn to var after game is finished
box_right = (x + sprite_width);
	
box_top = (y - sprite_height);
box_bottom = (y + sprite_height);

//kills player if health below 0
if (currentHealth <= 0) {
	audio_play_sound(snd_player_death,3,false);
	instance_destroy(self);
}

switch (currentState) {
	case player_state.knife : scr_knife(); break;
	case player_state.handgun : scr_handgun(); break;
	case player_state.shotgun : scr_shotgun(); break;
	case player_state.rifle : scr_rifle(); break;
}
