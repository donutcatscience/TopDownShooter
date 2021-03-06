/// @description control zombie

box_left = (x - (obj_zombie_basic.sprite_width));  //turn to var after game is finished
box_right = (x + (obj_zombie_basic.sprite_width));
	
box_top = (y - (obj_zombie_basic.sprite_height));
box_bottom = (y + (obj_zombie_basic.sprite_height));

if (currentHealth <= 0) {
	score += 10;
	instance_destroy(self);
}

//handle zombie moan
var iTime = irandom(200);
var iMoan = choose(snd_zombie_moan01,snd_zombie_moan02,snd_zombie_moan03,snd_zombie_moan04);
if (iTime = 100) audio_play_sound(iMoan,25,false);

switch (currentState) {
case zombie_state.walk : scr_enemy_walk(); break;
case zombie_state.melee : scr_enemy_melee(); break;
case zombie_state.wonder : scr_enemy_wonder(); break;
}
++meleeTimer;

////check to see # of zombies pierced with rifle
if(instance_exists(obj_player)){
	if (global.zombies_pierced == obj_player.zombies_able_to_pierce)
	{
		instance_destroy(obj_rifle_bullet);
		global.zombies_pierced = 0;
	}
}
