/// @description Controlls Game

if (!instance_exists(obj_player)) {
	window_set_cursor(cr_default); //hides mouse
}

if (keyboard_check_pressed(vk_backspace)) game_restart();

var zombieCount = instance_number(obj_zombie_basic);
show_debug_message("Zombies Walking: " + string(zombieCount)); 