/// @description 

if (instance_exists(obj_player)) {
//check for hit
	if (collision_rectangle(box_left,box_top,box_right,box_bottom,obj_meleeHit,false,true)) {
			flash = 1;
			//make zombies when hit
			do {
				var randomSpawnX = (x+ (choose(-1,1) * (25 + (random_range(10,15)))));
				var randomSpawnY = (y + (choose(-1,1) * (25+ (random_range(10,15)))));
			}
			until (place_free(randomSpawnX,randomSpawnY));
				instance_create_layer(randomSpawnX,randomSpawnY,"Instances",obj_zombie_basic);
		
			//blood splatter when stabbed
			var bloodX =(x + (random_range(5,15)));
			var bloodY =(y + (random_range(5,15)));
			instance_create_layer(bloodX,bloodY,"Blood",obj_brokenWoodSplatter);
			currentHealth = currentHealth - obj_player.meleeDamage;
			instance_destroy(other);
	}
}