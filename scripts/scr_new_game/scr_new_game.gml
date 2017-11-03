//starts a new game

if (!instance_exists(obj_light)) {
	instance_create_layer(64,-64,"Lighting",obj_light);
}

obj_gameController.gameActive = 1;
obj_gameController.win = 0;

instance_create_layer(221,216,"Instances",obj_player);
instance_create_layer(0,0,"UI",obj_handgun_icon);

instance_create_layer(2989.714,2016,"Instances",obj_exit_wall);
instance_create_layer(96,-64,"Instances", obj_grid);
instance_create_layer(3040,2016,"Instances",obj_win_zone);

instance_create_layer(480,992,"Spawners",obj_zombieSpawner);
instance_create_layer(480,1920,"Spawners",obj_zombieSpawner);
instance_create_layer(1504,608,"Spawners",obj_zombieSpawner);
instance_create_layer(2304,416,"Spawners",obj_zombieSpawner);
instance_create_layer(1728,1312,"Spawners",obj_zombieSpawner);
instance_create_layer(2560,992,"Spawners",obj_zombieSpawner);

audio_play_sound(mus_main,1,true);
audio_play_sound(mus_main_backup,2,true);