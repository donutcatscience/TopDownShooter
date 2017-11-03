/// @description Controlls Game

if (!instance_exists(obj_player)) {
	window_set_cursor(cr_default); //hides mouse
}
else if (instance_exists(obj_player)){
	window_set_cursor(cr_none);
}

if (gameActive = 1) && (!instance_exists(obj_player)) {
	instance_create_layer(0,0,"UI",obj_game_over);
}

if (keyboard_check_pressed(vk_backspace)) game_restart();

//used to test zombie cration
//var zombieCount = instance_number(obj_zombie_basic);
//show_debug_message("Zombies Walking: " + string(zombieCount)); 