/// @description Controlls Game

if (!instance_exists(obj_player)) {
	window_set_cursor(cr_default); //hides mouse
}

if (keyboard_check_pressed(vk_backspace)) game_restart();

//show_debug_message("Handgun: " + string(obj_player.handgun_bullets_remaining)); 
//show_debug_message("Shotgun: " + string(obj_player.shotgun_bullets_remaining));