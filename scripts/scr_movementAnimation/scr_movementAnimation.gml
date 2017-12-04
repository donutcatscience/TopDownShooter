/// @description Controls Sprite Animation
if(gamepad_is_connected(0)){
	var playerAngle = point_direction(0,0,inputHoriz,inputVert);
	show_debug_message("player angle: " + string(playerAngle));
}
else{
	var playerAngle = point_direction(x,y,mouse_x,mouse_y);
}
//manage left/right animation change
if (moveX = 0 && moveY = 0) { //player not moving
	image_speed = 0; 
	playerCurrentFeet = spr_player_feet_walk;
}
else if (moveX != 0 && moveY != 0){ //the angle code changes between walk and strafe on the fly, depending on image angle
	if	(sign(moveX) + sign(moveY) = 0) {//this code checks to see which diagional direction the player is using
		if (((playerAngle >= 90) & (playerAngle <=180)) || ((playerAngle >=270) || (playerAngle =0))) {
		playerCurrentFeet = spr_player_feet_strafeRight;
		}
		else {
		playerCurrentFeet = spr_player_feet_walk;
		}
	}
	else if (sign(moveX) + sign(moveY) = -2 || 2) {//this code checks to see which diagional direction the player is using
		if (((playerAngle >= 0) & (playerAngle <=90)) || ((playerAngle >=180) && (playerAngle <=270))) {
		playerCurrentFeet = spr_player_feet_strafeRight;
		}
		else {
		playerCurrentFeet = spr_player_feet_walk;
		}
	}
	++walkFrame; 
	if (walkFrame >= 21) walkFrame = 0;
}
else if (moveX = 0 && moveY != 0){ //the angle code changes between walk and strafe on the fly, depending on image angle
	if (((playerAngle >= 135) & (playerAngle <=225)) || ((playerAngle >=315) || (playerAngle <=45))) {
		playerCurrentFeet = spr_player_feet_strafeRight;
	}
	else {
		playerCurrentFeet = spr_player_feet_walk;
	}
	++walkFrame; 
	if (walkFrame >= 21) walkFrame = 0;
}
else if (moveX != 0 && moveY = 0){ //the angle code changes between walk and strafe on the fly, depending on image angle
	if (((playerAngle >= 225) & (playerAngle <=315)) || ((playerAngle >=45) & (playerAngle <=135))) {
		playerCurrentFeet = spr_player_feet_strafeRight;
	}
	else {
		playerCurrentFeet = spr_player_feet_walk;
	}
	++walkFrame; 
	if (walkFrame >= 21) walkFrame = 0;
}