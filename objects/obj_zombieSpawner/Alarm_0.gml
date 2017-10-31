/// @description Initial zombie spawner

if (instance_exists(obj_player)) {
	do {
		var randomSpawnX = (x+ (choose(-1,1) * (25 + (random_range(10,15)))));
		var randomSpawnY = (y + (choose(-1,1) * (25+ (random_range(10,15)))));
	}
	until (place_free(randomSpawnX,randomSpawnY));
		instance_create_layer(randomSpawnX,randomSpawnY,"Instances",obj_zombie_basic);

	alarm_set(0,(room_speed * random_range(3,10)));
}