/// @description Controlls Game

if (!instance_exists(obj_player)) {
	window_set_cursor(cr_default);
}

if (keyboard_check_pressed(vk_backspace)) game_restart();

