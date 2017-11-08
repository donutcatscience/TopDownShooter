//loads assests for prototype level 01
show_debug_message("Loading lvl 2 assests");
instance_destroy(obj_light);

obj_room_controller.max_keys = 3;
obj_room_controller.gameActive = 1;
obj_room_controller.win = 0;
//global.level++;

instance_create_layer(320,544,"Instances",obj_player);
instance_create_layer(0,0,"UI",obj_handgun_icon);

show_debug_message("Loading player assests");

instance_create_layer(2767,512,"Instances",obj_exit_wall);
obj_exit_wall.image_angle = image_angle + 90;
instance_create_layer(96,-64,"Instances", obj_grid);
instance_create_layer(2752,672,"Instances",obj_win_zone);
obj_win_zone.image_angle = image_angle + 90;

instance_create_layer(1664,608,"Spawners",obj_zombieSpawner);
instance_create_layer(1632,1600,"Spawners",obj_zombieSpawner);
instance_create_layer(2752,1472,"Spawners",obj_zombieSpawner);

audio_play_sound(mus_main,1,true);
audio_play_sound(mus_main_backup,2,true);
show_debug_message("Loading lvl 2 music");