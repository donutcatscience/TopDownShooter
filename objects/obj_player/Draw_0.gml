/// @description Controls Sprite Animation

//handle reloading weapon
if currentReload >= 1 {
		image_speed = 1;
		draw_sprite_ext(playerCurrentFeet, walkFrame, x,y,sizeModifier,sizeModifier,(point_direction(x,y,mouse_x,mouse_y)),c_white,1);
		draw_sprite_ext(playerCurrentTorso, torsoFrame, x,y,sizeModifier,sizeModifier,(point_direction(x,y,mouse_x,mouse_y)),c_white,1);
		++torsoFrame;
		--currentTempTorso;
		if (currentTempTorso <= 0) {
			currentReload = 0;
			currentTorso = playerLastTorso;
			torsoFrame = 0;
		}
}

//handle weapon being shot
if fireWeapon = 1 {
		image_speed = 1;
		draw_sprite_ext(playerCurrentFeet, walkFrame, x,y,sizeModifier,sizeModifier,(point_direction(x,y,mouse_x,mouse_y)),c_white,1);
		draw_sprite_ext(playerCurrentTorso, torsoFrame, x,y,sizeModifier,sizeModifier,(point_direction(x,y,mouse_x,mouse_y)),c_white,1);
		++torsoFrame;
		--currentTempTorso;
		if (currentTempTorso <= 0) {
			currentTorso = playerLastTorso;
			torsoFrame = 0;
			fireWeapon = 0;
		}
}
else {//otherwise draws torso and feet walking
	scr_movementAnimation(); //calls script that handles all of the logic for walking vs strafeing
	//checks movement of player and draws animation accordingly, keeps player pointed at mouse
	draw_sprite_ext(playerCurrentFeet, walkFrame, x,y,sizeModifier,sizeModifier,(point_direction(x,y,mouse_x,mouse_y)),c_white,1);
	draw_sprite_ext(playerCurrentTorso, torsoFrame, x,y,sizeModifier,sizeModifier,(point_direction(x,y,mouse_x,mouse_y)),c_white,1);	
}

