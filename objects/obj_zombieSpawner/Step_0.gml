/// @description control spawner

if (currentHealth <= 0) {
	instance_destroy(self);
	instance_create_layer(x,y,"Instances",obj_keys);
}