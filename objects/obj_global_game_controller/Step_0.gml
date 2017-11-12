/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_player)) {
	window_set_cursor(cr_default); //hides mouse
}
else if (instance_exists(obj_player)){
	window_set_cursor(cr_none);
}

//show_debug_message(isPaused);
if(room_get_name(room) != "rm_main_menu"){
	if(os_is_paused()){
		room_persistent = true;
		isPaused = true;
		prevRoom = room;
		room_goto(rm_pause_screen);
	}
	else if(keyboard_check_pressed(vk_escape) && !isPaused){
		room_persistent = true;
		isPaused = true;
		prevRoom = room;
		room_goto(rm_pause_screen);
	}
	else if(keyboard_check_pressed(vk_escape) && isPaused){
		isPaused = false;
		room_goto(prevRoom);
		//room_persistent = false;
	}
}
else{
	
}
