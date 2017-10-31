//get player imputs
scr_getInputs();

//set handgun variables ALL OF THESE NEED TO BE MOVED OUT INTO A SEPERATE SCRIPT
bulletSpeed = 50;
clipSize = 12; //max clip size
reloadSpeed = 10; 
bulletDamage = 10;
bulletSpawn_x = 43.5;
bulletSpawn_y = 26;


//handle reloading
if (inputReload) { //checks for reload pressed
	torsoFrame = 0; //resets the torso frame back to 0 so that it doesnt get start/stop at odd places
	currentTempTorso = 15; //sets the number of frames before going back to walk torso
	currentReload = 1; //
	currentClip = 12; // fills the clip with 12 bullets
	playerCurrentTorso = spr_player_handgun_reload; //changes torso to handgun reload animation
	playerLastTorso = spr_player_handgun_walk; //preserves previous torso
}

//handle shooting
if (inputShoot) && (currentClip >= 1) && (currentReload = 0) { //checks for shooting, at least 1 bullet in clip, and not reloading
	fireWeapon = 1; //sets weapon fire to true
	currentTempTorso = 3; //sets number of frames for fire animation
	torsoFrame = 0; //resets the torso frame back to 0 so that it doesnt get start/stop at odd places
	if (fireWeapon = 1){
		audio_play_sound(sfx_handgunShoot,1,false);
		var length = point_distance(0,0,bulletSpawn_x,bulletSpawn_y) //points are half distance of sprite center to gun because of 1/2 scaled sprite
		var gunDirection = point_direction(0,0,bulletSpawn_x,bulletSpawn_y);
		var imageAngle = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
		var xx = obj_player.x + lengthdir_x(length,gunDirection+imageAngle);
		var yy = obj_player.y + lengthdir_y(length,gunDirection+imageAngle);
		var bullet = instance_create_layer(xx,yy,"Instances",obj_handgun_bullet);
		--currentClip;
		bullet.direction = imageAngle;
		bullet.image_angle = imageAngle;		
		playerCurrentTorso = spr_player_handgun_shoot;
		playerLastTorso = spr_player_handgun_walk;
	}
}
if (inputShoot) && (currentClip <= 0) && (currentReload = 0) { //empty clip sound
	audio_play_sound(snd_emptyClip,3,false);
}
