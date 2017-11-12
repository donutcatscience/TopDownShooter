/// @description Insert description here
// You can write your code in this editor
obj_global_game_controller.isPaused = false;
obj_global_game_controller.prevRoom = noone;
obj_global_game_controller.isNewGame = true;
audio_stop_all();
room_goto(rm_prototype01);