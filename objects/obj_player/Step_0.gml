///// @description handel inputs

switch (currentState) {
	case player_state.knife : scr_knife(); break;
	case player_state.handgun : scr_handgun(); break;
	case player_state.shotgun : scr_shotgun(); break;
	case player_state.rifle : scr_rifle(); break;
}
