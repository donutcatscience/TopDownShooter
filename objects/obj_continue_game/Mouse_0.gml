/// @description Insert description here
// You can write your code in this editor
if(obj_global_game_controller.isPaused){
	obj_global_game_controller.isPaused = false;
	room_goto(obj_global_game_controller.prevRoom);	
}