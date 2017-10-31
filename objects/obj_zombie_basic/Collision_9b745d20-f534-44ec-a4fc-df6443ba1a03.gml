/// @description hit by bullet

//take damage
currentHealth = currentHealth - obj_player.bulletDamage;
flash = 1;
instance_destroy(other)

var bloodX =(x + (random_range(5,15)));
var bloodY =(y + (random_range(5,15)));
instance_create_layer(bloodX,bloodY,"Blood",obj_zombieBloodSplatter);
