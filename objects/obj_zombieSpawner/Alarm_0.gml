/// @description Initial zombie spawner

if (instance_exists(obj_player)) {
	do {
		var randomSpawnX = (x+ (choose(-1,1) * (50 + (random_range(20,30)))));
		var randomSpawnY = (y + (choose(-1,1) * (50+ (random_range(20,30)))));
	}
	until (place_free(randomSpawnX,randomSpawnY));
		instance_create_layer(randomSpawnX,randomSpawnY,"Instances",obj_zombie_basic);

	alarm_set(0,(room_speed * random_range(0.5,2)));
}