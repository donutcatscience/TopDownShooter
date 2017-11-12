/// @description Destroys self and runs splash screen script

instance_destroy(obj_splash_music_controller);
audio_stop_all();
room_goto(rm_main_menu);
instance_destroy();
