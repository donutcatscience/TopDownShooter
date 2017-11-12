/// @description Controls Game

if (!instance_exists(obj_player)) {
	window_set_cursor(cr_default); //hides mouse
}
else if (instance_exists(obj_player)){
	window_set_cursor(cr_none);
}

if (gameActive = 1) && (!instance_exists(obj_player)) && (!instance_exists(obj_game_over)) && (win = 0) {
	instance_create_layer(0,0,"UI",obj_game_over);
}

if (keyboard_check_pressed(vk_backspace)) room_restart();