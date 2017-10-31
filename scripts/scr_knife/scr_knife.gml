//get player imputs
scr_getInputs();

//set handgun variables ALL OF THESE NEED TO BE MOVED OUT INTO A SEPERATE SCRIPT

meleeDamage = 30;
knockBack = 5;
bulletSpawn_x = 50;
bulletSpawn_y = 35;

//handle attacking
if ((inputShoot) || (inputMelee)) && (currentReload = 0) && (fireWeapon = 0) { //checks for reload pressed
	torsoFrame = 0; //resets the torso frame back to 0 so that it doesnt get start/stop at odd places
	fireWeapon = 1;
	currentTempTorso = 15; //sets the number of frames before going back to walk torso
	playerCurrentTorso = spr_player_knife_melee; //changes torso to handgun reload animation
	playerLastTorso = spr_player_knife_walk; //preserves previous torso

	//create object to use for hit check
	if (fireWeapon = 1) {
		audio_play_sound(sfx_handgunShoot,1,false); //change to knife swing sound
		var length = point_distance(0,0,bulletSpawn_x,bulletSpawn_y) //points are half distance of sprite center to gun because of 1/2 scaled sprite
		var gunDirection = point_direction(0,0,bulletSpawn_x,bulletSpawn_y);
		var imageAngle = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
		var xx = obj_player.x + lengthdir_x(length,gunDirection+imageAngle);
		var yy = obj_player.y + lengthdir_y(length,gunDirection+imageAngle);
		var bullet = instance_create_layer(xx,yy,"Instances",obj_meleeHit);
		currentReload = 1;
	}
}
