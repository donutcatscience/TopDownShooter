/// @description 

//check for hit
if (collision_rectangle(box_left,box_top,box_right,box_bottom,obj_meleeHit,false,true)) {
		obj_zombie_basic.flash = 1
		//blood splatter when stabbed
		var bloodX =(x + (random_range(5,15)));
		var bloodY =(y + (random_range(5,15)));
		instance_create_layer(bloodX,bloodY,"Blood",obj_zombieBloodSplatter);
		currentHealth = currentHealth - obj_player.meleeDamage;
		instance_destroy(other);
}