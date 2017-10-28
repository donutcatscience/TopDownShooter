/// @description Draws Fake Mouse

if (instance_exists(obj_player)) {
	var vx = mouse_x - obj_player.x; //x compenent of our vector
	var vy = mouse_y - obj_player.y; //y component of our vector

	var length = point_distance(0,0,obj_player.bulletSpawn_x,obj_player.bulletSpawn_y) //points are half distance of sprite center to gun because of 1/2 scaled sprite
	var gunDirection = point_direction(0,0,obj_player.bulletSpawn_x,obj_player.bulletSpawn_y);
	var imageAngle = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
	var xx = obj_player.x + lengthdir_x(length,gunDirection+imageAngle);
	var yy = obj_player.y + lengthdir_y(length,gunDirection+imageAngle);

	var ret_x = xx + vx;
	var ret_y = yy + vy;

	draw_sprite_ext(spr_fakeMouse,0,ret_x, ret_y,.8,.8,0,c_white,1);
}