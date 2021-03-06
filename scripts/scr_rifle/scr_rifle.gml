//get player imputs
scr_getInputs();

//set handgun variables 
bulletSpeed = 90;
clipSize = rifle_clip_size; //max clip size
currentClip = rifle_bullets_remaining;
reloadSpeed = 10; //haven't implemented reload speed yet
bulletDamage = rifle_bullet_damage;
bulletSpawn_x = 20; //sets cords for bullet to leave muzzle
bulletSpawn_y = 25;

//melee attack
meleeDamage = 10;
meleeSpawn_x = 50; //sets cords for melee collision box
meleeSpawn_y = 35;

if(instance_exists(obj_player)) {
	if (inputShoot) && (currentClip <= 0) && (currentReload = 0) { //empty clip sound
		audio_play_sound(snd_emptyClip,3,false);
		inputReload = 1;
	}

	//handle melee attacking
	if (inputMelee) && (currentReload = 0) && (fireWeapon = 0) { //checks for reload pressed
		torsoFrame = 0; //resets the torso frame back to 0 so that it doesnt get start/stop at odd places
		fireWeapon = 1;
		currentTempTorso = 15; //sets the number of frames before going back to walk torso
		playerCurrentTorso = spr_player_rifle_melee; //changes torso to handgun reload animation
		playerLastTorso = spr_player_rifle_walk; //preserves previous torso

		//create object to use for hit check
		if (fireWeapon = 1 && !gamepad_is_connected(0)) {
			audio_play_sound(snd_knife_miss,3,false);
			var length = point_distance(0,0,meleeSpawn_x,meleeSpawn_y) //points are half distance of sprite center to gun because of 1/2 scaled sprite
			var gunDirection = point_direction(0,0,meleeSpawn_x,meleeSpawn_y);
			var imageAngle = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
			var xx = obj_player.x + lengthdir_x(length,gunDirection+imageAngle);
			var yy = obj_player.y + lengthdir_y(length,gunDirection+imageAngle);
			var bullet = instance_create_layer(xx,yy,"Instances",obj_meleeHit); //above math finds creation point for melee collision box
			currentReload = 1;
		}
		else{
			audio_play_sound(snd_knife_miss,3,false);
			var length = point_distance(0,0,meleeSpawn_x,meleeSpawn_y) //points are half distance of sprite center to gun because of 1/2 scaled sprite
			var gunDirection = point_direction(0,0,meleeSpawn_x,meleeSpawn_y);
			var imageAngle = point_direction(0,0,inputHoriz,inputVert);
			var xx = obj_player.x + lengthdir_x(length,gunDirection+imageAngle);
			var yy = obj_player.y + lengthdir_y(length,gunDirection+imageAngle);
			var bullet = instance_create_layer(xx,yy,"Instances",obj_meleeHit); //above math finds creation point for melee collision box
			currentReload = 1;
		}
	}


	//handle reloading
	if (inputReload) && (currentClip < 2) { //checks for reload pressed
		audio_play_sound(snd_handgun_reload,3,false);
		torsoFrame = 0; //resets the torso frame back to 0 so that it doesnt get start/stop at odd places
		currentTempTorso = 15; //sets the number of frames before going back to walk torso
		currentReload = 1; //
		currentClip = clipSize; // fills the clip with 12 bullets
		playerCurrentTorso = spr_player_rifle_reload; //changes torso to rifle reload animation
		playerLastTorso = spr_player_rifle_walk; //preserves previous torso
	}

	//handle shooting
	if (inputShoot) && (currentClip >= 1) && (currentReload = 0) { //checks for shooting, at least 1 bullet in clip, and not reloading
		fireWeapon = 1; //sets weapon fire to true
		currentTempTorso = 3; //sets number of frames for fire animation
		torsoFrame = 0; //resets the torso frame back to 0 so that it doesnt get start/stop at odd places
		if (fireWeapon = 1 && !gamepad_is_connected(0)){
			global.zombies_pierced = 0;
			//show_debug_message("Rifle fired. zombies hit: " + string(global.zombies_pierced))
			audio_play_sound(sfx_handgunShoot,1,false);
			var length = point_distance(0,0,bulletSpawn_x,bulletSpawn_y) //points are half distance of sprite center to gun because of 1/2 scaled sprite
			var gunDirection = point_direction(0,0,bulletSpawn_x,bulletSpawn_y);
			var imageAngle = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
			var xx = obj_player.x + lengthdir_x(length,gunDirection+imageAngle);
			var yy = obj_player.y + lengthdir_y(length,gunDirection+imageAngle);
			var bullet = instance_create_layer(xx,yy,"Instances",obj_rifle_bullet); //above math finds creation point for bullet to leave muzzle
			var muzzleFlash = instance_create_layer(xx,yy,"Instances",obj_handgun_muzzleflash);
			muzzleFlash.image_angle = imageAngle;
			--currentClip;
			bullet.direction = imageAngle;
			bullet.image_angle = imageAngle;		
			playerCurrentTorso = spr_player_rifle_shoot;
			playerLastTorso = spr_player_rifle_walk;
		}
		else{
			global.zombies_pierced = 0;
			//show_debug_message("Rifle fired. zombies hit: " + string(global.zombies_pierced))
			audio_play_sound(sfx_handgunShoot,1,false);
			var length = point_distance(0,0,bulletSpawn_x,bulletSpawn_y) //points are half distance of sprite center to gun because of 1/2 scaled sprite
			var gunDirection = point_direction(0,0,bulletSpawn_x,bulletSpawn_y);
			var imageAngle = point_direction(0,0,inputHoriz,inputVert);
			var xx = obj_player.x + lengthdir_x(length,gunDirection+imageAngle);
			var yy = obj_player.y + lengthdir_y(length,gunDirection+imageAngle);
			var bullet = instance_create_layer(xx,yy,"Instances",obj_rifle_bullet); //above math finds creation point for bullet to leave muzzle
			var muzzleFlash = instance_create_layer(xx,yy,"Instances",obj_handgun_muzzleflash);
			muzzleFlash.image_angle = imageAngle;
			--currentClip;
			bullet.direction = imageAngle;
			bullet.image_angle = imageAngle;		
			playerCurrentTorso = spr_player_rifle_shoot;
			playerLastTorso = spr_player_rifle_walk;	
		}
	}
}

rifle_bullets_remaining = currentClip; //tracks rifle bullets