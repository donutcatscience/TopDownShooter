///// @description handel inputs

//kills player if health below 0
if (currentHealth <= 0) instance_destroy(self);

switch (currentState) {
	case player_state.knife : scr_knife(); break;
	case player_state.handgun : scr_handgun(); break;
	case player_state.shotgun : scr_shotgun(); break;
	case player_state.rifle : scr_rifle(); break;
}
