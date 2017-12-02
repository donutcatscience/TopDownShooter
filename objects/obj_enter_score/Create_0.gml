/// @description Insert description here
// You can write your code in this editor

//moves button to camera position
x = camera_get_view_x(view_camera[0]) + 960;
y = camera_get_view_y(view_camera[0]) + 690;
			
map1 = ds_map_create();
ds_map_add(map1, "x-apikey", "74be6d09a5ea4fe2da5d2cc2f23ef0dfe7505");
var first = ds_map_find_first(map1);
ds_map_add(map1, "Content-Type", "application/json");


