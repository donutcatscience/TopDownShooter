/// @description loads new game script

audio_stop_all();

mp_grid_destroy(global.grid);
instance_destroy(obj_grid);
surface_free(obj_light.surf);
instance_destroy(obj_light);
instance_destroy(obj_zombieSpawner);
instance_destroy(obj_zombie_basic);
instance_destroy(obj_handgun_icon);
instance_destroy();

scr_new_game();