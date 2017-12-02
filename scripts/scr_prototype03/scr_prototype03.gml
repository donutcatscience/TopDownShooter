//loads assests for prototype level 03

obj_room_controller.max_keys = 4;
obj_room_controller.gameActive = 1;
obj_room_controller.win = 0;
//global.level++;

instance_create_layer(896,224,"Instances",obj_player);
instance_create_layer(0,0,"UI",obj_handgun_icon);
instance_create_layer(0,0,"Lighting",obj_light);

instance_create_layer(1664,1650,"Instances",obj_exit_wall);
instance_create_layer(96,-64,"Instances", obj_grid);
instance_create_layer(1747,1651,"Instances",obj_win_zone);


instance_create_layer(1664,224,"Spawners",obj_zombieSpawner);
instance_create_layer(192,384,"Spawners",obj_zombieSpawner);
instance_create_layer(1664,960,"Spawners",obj_zombieSpawner);
instance_create_layer(192,1088,"Spawners",obj_zombieSpawner);

audio_play_sound(mus_main,1,true);
audio_play_sound(mus_main_backup,2,true);