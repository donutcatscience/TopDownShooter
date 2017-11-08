/// @description creates player wall objects

image_xscale = 2;
image_yscale = 2;

//save walls to delete later
box1 = instance_create_layer(x,y-64,"Instances",obj_playerWall);
box2 = instance_create_layer(x,y-32,"Instances",obj_playerWall);
box3 = instance_create_layer(x,y+32,"Instances",obj_playerWall);
box4 = instance_create_layer(x,y+64,"Instances",obj_playerWall);

//alarm used to test win condition
//alarm_set(0,150);