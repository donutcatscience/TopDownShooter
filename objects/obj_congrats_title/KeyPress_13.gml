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

//if (global.level = 1) {
//	show_debug_message("Going to level 2");
//	room_goto(rm_prototype02);
//	scr_prototype02();
//}

//if (global.level = 2) {
//	room_goto(rm_prototype03);
//	scr_prototype03();
//}