/// @description 

if (instance_exists(obj_player)) {
//check for hit
	if (collision_rectangle(box_left,box_top,box_right,box_bottom,obj_meleeHit,false,true)) {
			audio_play_sound(snd_weapon_hitWood,3,false);
			flash = 1;
			//make zombies when hit, and ensures unoccipied space
			do {
				var randomSpawnX = (x+ (choose(-1,1) * (25 + (random_range(10,15)))));
				var randomSpawnY = (y + (choose(-1,1) * (25+ (random_range(10,15)))));
			}
			until (place_free(randomSpawnX,randomSpawnY));
				instance_create_layer(randomSpawnX,randomSpawnY,"Instances",obj_zombie_basic);
		
			//blood splatter when stabbed
			var bloodX =(x + (random_range(-100,100)));
			var bloodY =(y + (random_range(-100,100)));
			instance_create_layer(bloodX,bloodY,"Blood",obj_brokenWoodSplatter);
			currentHealth = currentHealth - obj_player.meleeDamage;
			instance_destroy(other);
	}
}