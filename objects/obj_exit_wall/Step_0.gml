/// @description controls the wall that blocks the player from exiting

if (instance_exists(obj_player)){
	if (obj_player.playerKeys = 6) {
		instance_destroy(box1);
		instance_destroy(box2);
		instance_destroy(box3);
		instance_destroy(box4);
		instance_destroy();
		audio_play_sound(snd_exit_bars_moving,1,false) //temp sound
	}
}