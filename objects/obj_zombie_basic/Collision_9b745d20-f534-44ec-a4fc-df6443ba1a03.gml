/// @description hit by bullet

//take damage
currentHealth = currentHealth - obj_player.bulletDamage;
flash = 1;
instance_destroy(other)

//moan when shot
var iMoan = choose(snd_zombie_moan01,snd_zombie_moan02,snd_zombie_moan03,snd_zombie_moan04);
audio_play_sound(iMoan,1,false);

//blood splatter when shot
var bloodX =(x + (random_range(5,15)));
var bloodY =(y + (random_range(5,15)));
instance_create_layer(bloodX,bloodY,"Blood",obj_zombieBloodSplatter);
