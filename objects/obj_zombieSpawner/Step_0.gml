/// @description control spawner

if (currentHealth <= 0) {
	score += 50;
	instance_destroy(self);
	instance_create_layer(x,y,"Instances",obj_keys); //creates keys for player to collect
}
