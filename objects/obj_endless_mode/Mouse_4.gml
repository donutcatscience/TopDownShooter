/// @description Insert description here
// You can write your code in this editor
instance_destroy(obj_game_title);
instance_destroy(obj_controls_title);
instance_destroy(obj_splash_music_controller);
audio_stop_all();
//instance_destroy(obj_gameController);
instance_destroy(obj_press_enter);
//scr_endless_mode();
obj_global_game_controller.isPaused = false;
obj_global_game_controller.prevRoom = noone;
room_goto(rm_prototype_endless_mode);

instance_destroy();
