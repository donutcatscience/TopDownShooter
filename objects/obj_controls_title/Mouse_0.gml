/// @description removes other objects an displays game controls

instance_destroy(obj_game_title);
instance_destroy(obj_press_enter);
instance_destroy(obj_endless_mode);
instance_create_layer(0,0,"UI",obj_control_text);

instance_destroy();