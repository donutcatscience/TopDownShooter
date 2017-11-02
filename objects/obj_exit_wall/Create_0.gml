/// @description creates player wall objects

//save walls to delete later
box1 = instance_create_layer(2976,1951,"Instances",obj_playerWall);
box2 = instance_create_layer(2976,1985,"Instances",obj_playerWall);
box3 = instance_create_layer(2976,2014,"Instances",obj_playerWall);
box4 = instance_create_layer(2976,2046,"Instances",obj_playerWall);

//alarm used to test win condition
//alarm_set(0,150);