/// @description draws the fake mouse

var vx = mouse_x - obj_player.x; //x compenent of our vector
var vy = mouse_y - obj_player.y; //y component of our vector

var length = point_distance(0,0,obj_player.bulletSpawn_x,obj_player.bulletSpawn_y) //points are half distance of sprite center to gun because of 1/2 scaled sprite
var gunDirection = point_direction(0,0,obj_player.bulletSpawn_x,obj_player.bulletSpawn_y);
var imageAngle = point_direction(x,y,mouse_x,mouse_y);
var xx = x + lengthdir_x(length,gunDirection+imageAngle);
var yy = y + lengthdir_y(length,gunDirection+imageAngle);
aim_Mouse_x = xx
aim_Mouse_y = yy

var ret_x = aim_Mouse_x + vx;
var ret_y = aim_Mouse_y + vy;

draw_sprite(spr_fakeMouse,0,ret_x, ret_y);
