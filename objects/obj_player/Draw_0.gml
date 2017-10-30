/// @description Controls Sprite Animation

draw_rectangle(box_left,box_top,box_right,box_bottom,true); //TEMP FOR COLLISIONS

//draw player healthbar
if (currentHealth < maxHealth) {
	draw_healthbar(x-16,y-60,x+16,y-58, (currentHealth/maxHealth)*100,c_black,c_red,c_green,0,true,true);
}

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

