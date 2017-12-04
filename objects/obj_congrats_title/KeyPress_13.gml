/// @description loads new game script

audio_stop_all();

mp_grid_destroy(global.grid);
instance_destroy(obj_grid);

if(instance_exists(obj_light)) {
	surface_free(obj_light.surf);
	instance_destroy(obj_light);
}	

instance_destroy(obj_zombieSpawner);
instance_destroy(obj_zombie_basic);
instance_destroy(obj_handgun_icon);
instance_destroy();

if (room_get_name(room) = "rm_prototype05") {
	game_restart();
}

else room_goto_next();
