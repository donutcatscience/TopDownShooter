/// @description used to take damage and hit flash

//take damage
currentHealth = currentHealth - obj_player.bulletDamage;
flash = 1;
audio_play_sound(snd_weapon_hitWood,3,false);
instance_destroy(other)

//make zombies when hit, and ensure placement in unoccupied space
if (instance_exists(obj_player)) {
	do {
		var randomSpawnX = (x+ (choose(-1,1) * (25 + (random_range(10,15)))));
		var randomSpawnY = (y + (choose(-1,1) * (25+ (random_range(10,15)))));
	}
	until (place_free(randomSpawnX,randomSpawnY));
		instance_create_layer(randomSpawnX,randomSpawnY,"Instances",obj_zombie_basic);
	
	//spawns broken wood and wood blood
	var bloodX =(x + (random_range(5,15)));
	var bloodY =(y + (random_range(5,15)));
	instance_create_layer(bloodX,bloodY,"Blood",obj_brokenWoodSplatter);
}


