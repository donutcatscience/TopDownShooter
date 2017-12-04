/// @description hit by bullet

//take damage
if(instance_exists(obj_player)){
	
	currentHealth = currentHealth - obj_player.bulletDamage;
	flash = 1;
	global.zombies_pierced++;
	show_debug_message(string(global.zombies_pierced));

	//zombie shot sound
	audio_play_sound(snd_zombie_shot,3,false);

	//blood splatter when shot
	var bloodX =(x + (random_range(5,15)));
	var bloodY =(y + (random_range(5,15)));
	instance_create_layer(bloodX,bloodY,"Blood",obj_zombieBloodSplatter);
}