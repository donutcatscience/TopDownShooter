//loads assests for prototype level 03

obj_room_controller.max_keys = 5;
obj_room_controller.gameActive = 1;
obj_room_controller.win = 0;
//global.level++;

instance_create_layer(160,256,"Instances",obj_player);
instance_create_layer(0,0,"UI",obj_handgun_icon);
instance_create_layer(0,0,"Lighting",obj_light);

instance_create_layer(2848,1056,"Instances",obj_exit_wall);
instance_create_layer(96,-64,"Instances", obj_grid);
instance_create_layer(3008,1056,"Instances",obj_win_zone);


instance_create_layer(704,992,"Spawners",obj_zombieSpawner);
instance_create_layer(672,1952,"Spawners",obj_zombieSpawner);
instance_create_layer(2176,864,"Spawners",obj_zombieSpawner);
instance_create_layer(2176,1408,"Spawners",obj_zombieSpawner);
instance_create_layer(2720,1632,"Spawners",obj_zombieSpawner);

audio_play_sound(mus_main,1,true);
audio_play_sound(mus_main_backup,2,true);