// Cleans up backend data when new levels are loaded

audio_stop_all();
if (instance_exists(obj_grid)) {
	mp_grid_destroy(global.grid);
	instance_destroy(obj_grid);
}

if(instance_exists(obj_light)) {
	surface_free(obj_light.surf);
	instance_destroy(obj_light);
}	

instance_destroy(obj_zombieSpawner);
instance_destroy(obj_zombie_basic);
instance_destroy(obj_handgun_icon);
instance_destroy(obj_player);
instance_destroy(obj_keys);
instance_destroy(obj_brokenWoodSplatter);
instance_destroy(obj_exit_wall);
instance_destroy(obj_win_zone);
