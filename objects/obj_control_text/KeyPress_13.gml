/// @description Destroys self and runs splash screen script

instance_destroy(obj_splash_music_controller);
audio_stop_all();
instance_destroy();
scr_splash_screen();