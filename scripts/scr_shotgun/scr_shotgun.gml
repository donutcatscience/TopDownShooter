//get player imputs
scr_getInputs();

//set shotgun variables 
bulletSpeed = 50;
clipSize = 8; //max clip size
currentClip = shotgun_bullets_remaining;
bulletDamage = 45;
bulletSpawn_x = 55; //sets cords for bullet to leave muzzle
bulletSpawn_y = 18;

//melee attack
meleeDamage = 12;
meleeSpawn_x = 50; //sets cords for melee collision box
meleeSpawn_y = 35;

if(instance_exists(obj_player)) {

	//handle melee attacking
	if (inputMelee) && (currentReload = 0) && (fireWeapon = 0) { //checks for reload pressed
		torsoFrame = 0; //resets the torso frame back to 0 so that it doesnt get start/stop at odd places
		fireWeapon = 1;
		currentTempTorso = 15; //sets the number of frames before going back to walk torso
		playerCurrentTorso = spr_player_shotgun_melee; //changes torso to handgun reload animation
		playerLastTorso = spr_player_shotgun_walk; //preserves previous torso

		//create object to use for hit check
		if (fireWeapon = 1) {
			audio_play_sound(snd_knife_miss,3,false);
			var length = point_distance(0,0,meleeSpawn_x,meleeSpawn_y) //points are half distance of sprite center to gun because of 1/2 scaled sprite
			var gunDirection = point_direction(0,0,meleeSpawn_x,meleeSpawn_y);
			var imageAngle = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
			var xx = obj_player.x + lengthdir_x(length,gunDirection+imageAngle);
			var yy = obj_player.y + lengthdir_y(length,gunDirection+imageAngle);
			var bullet = instance_create_layer(xx,yy,"Instances",obj_meleeHit); //above math finds creation point for melee collision box
			currentReload = 1;
		}
	}

	//syncs reload sound with animation frames
	if (currentReload >= 1) && (currentTempTorso >= 1) {
		if (reloadSpeed = 20) {
			audio_play_sound(snd_shotgun_reload,3,false);
			reloadSpeed = 0;
		}
		++reloadSpeed;
	}
		
	//handle reloading
	if (inputReload) { //checks for reload pressed
		torsoFrame = 0; //resets the torso frame back to 0 so that it doesnt get start/stop at odd places
		currentTempTorso = ((clipSize - currentClip) * 20); //sets the number of frames before going back to walk torso
		currentReload = clipSize - currentClip; //locks character into reload animation
		currentClip = clipSize; 
		playerCurrentTorso = spr_player_shotgun_reload; //changes torso to handgun reload animation
		playerLastTorso = spr_player_shotgun_walk; //preserves previous torso
	}

	//handle shooting
	if (inputShoot) && (currentClip >= 1) && (currentReload = 0) { //checks for shooting, at least 1 bullet in clip, and not reloading
		fireWeapon = 1; //sets weapon fire to true
		currentTempTorso = 3; //sets number of frames for fire animation
		torsoFrame = 0; //resets the torso frame back to 0 so that it doesnt get start/stop at odd places
		if (fireWeapon = 1){
			audio_play_sound(snd_shotgun_shoot,1,false);
			var length = point_distance(0,0,bulletSpawn_x,bulletSpawn_y) //points are half distance of sprite center to gun because of 1/2 scaled sprite
			var gunDirection = point_direction(0,0,bulletSpawn_x,bulletSpawn_y);
			var imageAngle = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
			var xx = obj_player.x + lengthdir_x(length,gunDirection+imageAngle);
			var yy = obj_player.y + lengthdir_y(length,gunDirection+imageAngle);
			var muzzleFlash = instance_create_layer(xx,yy,"Instances",obj_shotgun_muzzleflash);
			muzzleFlash.image_angle = imageAngle;
			for(var ii=0; ii<12; ii++) {
				var spread = irandom_range(-7,7);
				var bullet = instance_create_layer(xx,yy,"Instances",obj_shotgun_bullet); //above math finds creation point for bullet to leave muzzle
				bullet.direction = imageAngle + spread;
				bullet.speed = bulletSpeed - irandom_range(4,10);
			}
			--currentClip;
			playerCurrentTorso = spr_player_shotgun_shoot;
			playerLastTorso = spr_player_shotgun_walk;
		}
	}
	if (inputShoot) && (currentClip <= 0) && (currentReload = 0) { //empty clip sound
		audio_play_sound(snd_emptyClip,3,false);
	}
}

shotgun_bullets_remaining = currentClip;