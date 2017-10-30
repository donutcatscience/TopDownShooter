// Control Enemy Collision
		
targetX = obj_player.x - x;
targetY = obj_player.y - y;

mp_potential_step(obj_player.x,obj_player.y,enemySpeed,true);

//var xx = x + collision_rectangle(box_left,box_top,box_right,box_bottom,obj_player,false,false)
//var yy = y + collision_rectangle(box_left,box_top,box_right,box_bottom,obj_player,false,false)

//var moveX = sign(targetX) * enemySpeed;
//var moveY = sign(targetY) * enemySpeed;

////horizontal collision check		
//if (moveX != 0){
//	if (place_meeting(xx+moveX,yy,obj_playerWall)){
//		while (!place_meeting(xx+sign(moveX),yy,obj_playerWall)){
//			x += sign(moveX);
//		}
//		moveX = 0;
//	}
//}

////update movement
//x += moveX;

////verticle collision check 
//if (moveY != 0){
//	if (place_meeting(xx,yy+moveY,obj_playerWall)){
//		while (!place_meeting(xx,yy +sign(moveY),obj_playerWall)){
//			y += sign(moveY);
//		}
//		moveY = 0;
//	}
//}

////update movement values
//y += moveY;

//show_debug_message(image_angle);
//show_debug_message(moveX);
//show_debug_message(moveY);


