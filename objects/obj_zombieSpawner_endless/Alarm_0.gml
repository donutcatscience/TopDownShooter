/// @description Initial zombie spawner

var zombieCount = instance_number(obj_zombie_basic);

if (instance_exists(obj_player) && (zombieCount <= 50)) {
	do { //makes sure zombies aren't spawning in occupied space
		var randomSpawnX = (x+ (choose(-1,1) * (10 + (random_range(10,15)))));
		var randomSpawnY = (y + (choose(-1,1) * (10+ (random_range(10,15)))));
		show_debug_message(randomSpawnX);
		show_debug_message(randomSpawnY);
	}
	until (place_free(randomSpawnX,randomSpawnY));
		instance_create_layer(randomSpawnX,randomSpawnY,"Instances",obj_zombie_basic);

	alarm_set(0,(room_speed * random_range(3,7)));
}