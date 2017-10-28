/// @description Initial zombie spawner

do {
	var randomSpawnX = (obj_player.x + (choose(-1,1) * (200 + (random_range(20,150)))));
	var randomSpawnY = (obj_player.x + (choose(-1,1) * (200 + (random_range(20,150)))));
}
until (place_free(randomSpawnX,randomSpawnY));
	instance_create_layer(randomSpawnX,randomSpawnY,"Instances",obj_zombie_basic);

alarm_set(0,(room_speed * random_range(0.5,2)));
