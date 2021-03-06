/// @description Controls Game

if (!instance_exists(obj_player)) {
	window_set_cursor(cr_default); //hides mouse
}
else if (instance_exists(obj_player)){
	window_set_cursor(cr_none);
}

if (gameActive = 1) && (!instance_exists(obj_player)) && (!instance_exists(obj_game_over)) && (win = 0) {
	instance_create_layer(0,0,"UI",obj_game_over);
	var enterScore = instance_create_layer(0,0,"UI", obj_enter_score);
	enterScore.image_xscale = 2;
	enterScore.image_yscale = 2;
}

if (keyboard_check_pressed(vk_backspace)) room_restart();
if(obj_global_game_controller.isNewGame){
	if(room_get_name(room) = "rm_prototype_endless_mode"){
		obj_global_game_controller.isNewGame = false;
		room_persistent = false;
		room_restart();	
	}
}
if(obj_global_game_controller.isNewGame){
	if (room_get_name(room) = "rm_prototype01") {
		obj_global_game_controller.isNewGame = false;
		room_persistent = false;
		room_restart();	
	}
}