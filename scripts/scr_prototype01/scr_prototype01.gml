//loads assests for prototype level 01

instance_destroy(obj_light);

//global.level++;
obj_room_controller.max_keys = 1;
obj_room_controller.gameActive = 1;
obj_room_controller.win = 0;

instance_create_layer(221,216,"Instances",obj_player);
instance_create_layer(0,0,"UI",obj_handgun_icon);

instance_create_layer(1792,608,"Instances",obj_exit_wall);
instance_create_layer(96,-64,"Instances", obj_grid);
instance_create_layer(1888,608,"Instances",obj_win_zone);

instance_create_layer(480,992,"Spawners",obj_zombieSpawner);

audio_play_sound(mus_main,1,true);
audio_play_sound(mus_main_backup,2,true);