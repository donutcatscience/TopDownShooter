//loads all assets for game title splash screen

if (!instance_exists(obj_light)) {
	instance_create_layer(64,-64,"Lighting",obj_light);
}

instance_create_layer(-1,-1,"UI", obj_splash_music_controller);
instance_create_layer(680,416,"UI",obj_game_title);
instance_create_layer(450,895,"UI",obj_press_enter);
instance_create_layer(1510,895,"UI",obj_controls_title);
instance_create_layer(800, 895, "UI", obj_endless_mode);