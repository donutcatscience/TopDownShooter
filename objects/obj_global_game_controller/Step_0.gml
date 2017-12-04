/// @description Insert description here
// You can write your code in this editor
//show_debug_message(gamepad_is_connected(0));
if(gamepad_is_connected(0)){
	show_debug_message("horiz value" + string(gamepad_axis_value(0, gp_axisrh)));
	show_debug_message("vert value" + string(gamepad_axis_value(0, gp_axisrv)));
}
if (!instance_exists(obj_player)) {
	window_set_cursor(cr_default); //hides mouse
}
else if (instance_exists(obj_player)){
	window_set_cursor(cr_none);
}

gamepad_set_axis_deadzone(0, 0.10);


if(room_get_name(room) != "rm_main_menu" && room_get_name(room) != "rm_high_scores" && room_get_name(room)!= "rm_level_selector"){
	if(os_is_paused() && !isPaused){
		room_persistent = true;
		isPaused = true;
		prevRoom = room;
		room_goto(rm_pause_screen);
	}
	else if((keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0,gp_start)) && !isPaused){
		room_persistent = true;
		isPaused = true;
		prevRoom = room;
		room_goto(rm_pause_screen);
	}
	else if((keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0,gp_start)) && isPaused){
		isPaused = false;
		room_goto(prevRoom);
		//room_persistent = false;
	}
}
else{
	
}
