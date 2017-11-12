/// @description Insert description here
// You can write your code in this editor
if(room_get_name(room) == "rm_main_menu"){
	if(obj_global_game_controller.isPaused){
	audio_stop_all();
	obj_global_game_controller.isPaused = false;
	audio_play_sound(mus_main,1,true);
	audio_play_sound(mus_main_backup,2,true);
	room_goto(obj_global_game_controller.prevRoom);	
	}
}
else{
	if(obj_global_game_controller.isPaused){
		obj_global_game_controller.isPaused = false;
		room_goto(obj_global_game_controller.prevRoom);	
	}
}
