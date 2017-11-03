/// @description Remove title elements and run new game script

instance_destroy(obj_game_title);
instance_destroy(obj_controls_title);
instance_destroy(obj_splash_music_controller);
audio_stop_all();
instance_destroy();

scr_new_game();