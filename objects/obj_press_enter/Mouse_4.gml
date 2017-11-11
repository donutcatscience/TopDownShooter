/// @description Remove title elements and run new game script

instance_destroy(obj_game_title);
instance_destroy(obj_controls_title);
instance_destroy(obj_splash_music_controller);
instance_destroy(obj_endless_mode);
audio_stop_all();
instance_destroy(obj_gameController);
instance_destroy();

scr_prototype01();