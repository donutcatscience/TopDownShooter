/// @description control zombie

if (currentHealth <= 0) instance_destroy(self);

direction = point_direction(x,y,obj_player.x,obj_player.y);
image_angle = point_direction(x,y,obj_player.x,obj_player.y);